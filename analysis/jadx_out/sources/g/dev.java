package g;

import java.util.Calendar;

/* loaded from: classes3.dex */
public class dev extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        if (((Calendar) obj) == null) {
            fwgVar.af();
            return;
        }
        fwgVar.p();
        fwgVar.o("year");
        fwgVar.ac(r4.get(1));
        fwgVar.o("month");
        fwgVar.ac(r4.get(2));
        fwgVar.o("dayOfMonth");
        fwgVar.ac(r4.get(5));
        fwgVar.o("hourOfDay");
        fwgVar.ac(r4.get(11));
        fwgVar.o(dgk.UNIT_MINUTE);
        fwgVar.ac(r4.get(12));
        fwgVar.o(dgk.UNIT_SECOND);
        fwgVar.ac(r4.get(13));
        fwgVar.ag();
    }
}
