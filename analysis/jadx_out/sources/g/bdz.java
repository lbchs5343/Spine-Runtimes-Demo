package g;

import android.os.Build;
import android.os.Trace;

/* loaded from: classes.dex */
public final class bdz extends axr implements and {
    final /* synthetic */ boolean $isTracingEnabled;
    final /* synthetic */ String $traceTag;
    final /* synthetic */ cg $worker;
    final /* synthetic */ dly this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bdz(cg cgVar, boolean z, String str, dly dlyVar) {
        super(1);
        this.$worker = cgVar;
        this.$isTracingEnabled = z;
        this.$traceTag = str;
        this.this$0 = dlyVar;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        String str;
        Throwable th = (Throwable) obj;
        if (th instanceof gfr) {
            this.$worker.stop(((gfr) th).a());
        }
        if (this.$isTracingEnabled && (str = this.$traceTag) != null) {
            dly dlyVar = this.this$0;
            ao aoVar = dlyVar.h.h;
            int hashCode = dlyVar.f14408g.hashCode();
            aoVar.getClass();
            if (Build.VERSION.SDK_INT >= 29) {
                frg.b(hashCode, baf.y(str));
            } else {
                String y = baf.y(str);
                try {
                    if (baf.r == null) {
                        baf.r = Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
                    }
                    baf.r.invoke(null, Long.valueOf(baf.t), y, Integer.valueOf(hashCode));
                } catch (Exception e2) {
                    baf.be(e2);
                }
            }
        }
        return dgi.f14134a;
    }
}
