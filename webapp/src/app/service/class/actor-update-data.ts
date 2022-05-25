import { Phone } from "src/app/model/datatype/phone";

export class ActorUpdateData {
    name: string = "";
    surname: string = "";
    phone: Phone | null = null;
    picture: string | null = null;
}
