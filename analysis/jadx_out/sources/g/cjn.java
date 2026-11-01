package g;

import android.os.Message;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* loaded from: classes.dex */
public final class cjn extends bgh implements ank {

    /* renamed from: a, reason: collision with root package name */
    public int f12988a;

    /* renamed from: b, reason: collision with root package name */
    public giy f12989b;

    /* renamed from: c, reason: collision with root package name */
    public int f12990c;

    @Override // g.ank
    public final void dq(Message message) {
        int i;
        int i2;
        giy giyVar = this.f12989b;
        if (message.what != 1001) {
            return;
        }
        ((gsa) this.dq).e(this.iw, this.ox.f13427b);
        int i3 = this.f12990c - 1;
        this.f12990c = i3;
        if (i3 < 0 && (i2 = this.f12988a) != 0) {
            giyVar.sendEmptyMessageDelayed(1001, i2);
        } else if (i3 <= 0 || (i = this.f12988a) == 0) {
            giyVar.removeMessages(1001);
        } else {
            giyVar.sendEmptyMessageDelayed(1001, i);
        }
    }

    @Override // g.bgh
    public final boolean dq(Object... objArr) {
        Map<String, String> map = this.s;
        if (map != null) {
            int o = byh.o(map.get("loop"), 0);
            if (o <= 0) {
                this.f12990c = -1;
            } else {
                this.f12990c = o;
            }
            this.f12988a = byh.o(this.s.get(MediationConstant.EXTRA_DURATION), 0);
        }
        this.f12989b.sendEmptyMessageDelayed(1001, this.f12988a);
        return true;
    }
}
