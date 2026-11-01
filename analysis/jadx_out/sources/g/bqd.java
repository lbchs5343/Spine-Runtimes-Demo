package g;

import java.util.Calendar;
import java.util.GregorianCalendar;

/* loaded from: classes3.dex */
public final class bqd implements dsb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11999a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bke f12000b;

    public /* synthetic */ bqd(bke bkeVar, int i) {
        this.f11999a = i;
        this.f12000b = bkeVar;
    }

    @Override // g.dsb
    public final bke j(eem eemVar, ri riVar) {
        switch (this.f11999a) {
            case 0:
                if (riVar.f19901a == Number.class) {
                    return (atb) this.f12000b;
                }
                return null;
            default:
                Class cls = riVar.f19901a;
                if (cls == Calendar.class || cls == GregorianCalendar.class) {
                    return (dev) this.f12000b;
                }
                return null;
        }
    }

    public String toString() {
        switch (this.f11999a) {
            case 1:
                return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + ((dev) this.f12000b) + "]";
            default:
                return super.toString();
        }
    }
}
