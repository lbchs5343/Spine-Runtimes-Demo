package g;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes3.dex */
public final class dfg extends bke {

    /* renamed from: b, reason: collision with root package name */
    public static final a f14089b = new a();

    /* renamed from: c, reason: collision with root package name */
    public final SimpleDateFormat f14090c;

    public class a implements dsb {
        @Override // g.dsb
        public final bke j(eem eemVar, ri riVar) {
            if (riVar.f19901a == Time.class) {
                return new dfg(0);
            }
            return null;
        }
    }

    private dfg() {
        this.f14090c = new SimpleDateFormat("hh:mm:ss a");
    }

    public /* synthetic */ dfg(int i) {
        this();
    }

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        String format;
        Time time = (Time) obj;
        if (time == null) {
            fwgVar.af();
            return;
        }
        synchronized (this) {
            format = this.f14090c.format((Date) time);
        }
        fwgVar.s(format);
    }
}
