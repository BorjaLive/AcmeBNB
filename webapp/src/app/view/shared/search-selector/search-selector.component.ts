import { Component, EventEmitter, Input, OnDestroy, OnInit, Output, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { MatSelect } from '@angular/material/select';
import { ReplaySubject, Subject, takeUntil } from 'rxjs';
import { CommonsService } from 'src/app/service/helpers/commons.service';

@Component({
  selector: 'search-selector',
  templateUrl: './search-selector.component.html',
  styleUrls: ['./search-selector.component.css']
})
export class SearchSelectorComponent implements OnInit, OnDestroy {

  private _item: SearchItem<any> | null = null;

  get item(): SearchItem<any> | null { return this._item; }
  @Input()
  set item(val: SearchItem<any> | null) {
    this.itemGroup.get("itemCtrl")?.setValue(val);
    this._item = val;
  }
  @Output() itemChange = new EventEmitter<SearchItem<any>>();

  private _items: SearchItem<any>[] = [];

  get items(): SearchItem<any>[] { return this._items; }
  @Input()
  set items(val: SearchItem<any>[]) {
    this._items = val;
    this.filteredItems.next(this.items.slice());
  }

  @ViewChild("itemSelect", { static: true }) itemSelect!: MatSelect;
  itemGroup: FormGroup;
  filteredItems = new ReplaySubject<SearchItem<any>[]>(1);
  protected _onDestroy = new Subject<void>();

  @Input() label: string = "Elementos";
  @Input() emptyText: string = "Sin elementos";

  constructor(
    private _fb: FormBuilder,
    private readonly commonsService: CommonsService
  ) {
    this.itemGroup = this._fb.group({
      itemCtrl: ["", []],
      itemFilterCtrl: ["", []]
    });
  }

  ngOnInit() {
    this.itemGroup.get("itemFilterCtrl")?.valueChanges
      .pipe(takeUntil(this._onDestroy))
      .subscribe(() => {
        this.filterItems();
      });

    this.itemGroup.get("itemCtrl")?.valueChanges
      .pipe(takeUntil(this._onDestroy))
      .subscribe(() => {
        this.itemChange.emit(this.itemGroup.get("itemCtrl")?.value);
      });
  }

  ngOnDestroy() {
    this._onDestroy.next();
    this._onDestroy.complete();
  }

  filterItems() {
    if (!this.items) {
      return;
    }

    let search = this.itemGroup.get("itemFilterCtrl")?.value;
    if (!search) {
      this.filteredItems.next(this.items.slice());
      return;
    } else {
      search = this.commonsService.removeAccents(search.toLowerCase());
    }

    this.filteredItems.next(
      this.items.filter(item => item.keys !== null &&
        item.keys.some(key => this.commonsService.removeAccents(key.toLowerCase()).includes(search))
      )
    );
  }

}

export interface SearchItem<T> {
  value: T,
  text: string,
  keys: string[]
}
