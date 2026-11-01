package g;

import android.os.Message;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class dhi implements ank {

    /* renamed from: a, reason: collision with root package name */
    public giy f14178a;

    /* renamed from: b, reason: collision with root package name */
    public cyx f14179b;

    /* renamed from: c, reason: collision with root package name */
    public fzc f14180c;

    /* renamed from: d, reason: collision with root package name */
    public dlv f14181d;

    @Override // g.ank
    public final void dq(Message message) {
        dlv dlvVar = this.f14181d;
        fzc fzcVar = this.f14180c;
        if (message.what != 1001) {
            return;
        }
        JSONObject jSONObject = fzcVar.f17691d;
        if (TextUtils.equals(jSONObject.optString("type"), "onAnimation")) {
            dlv ox = dlvVar.d(dlvVar).ox(jSONObject.optString("nodeId"));
            new gjp(ox.kk(), sh.h(ox, jSONObject.optJSONObject("animatorSet"))).h();
        } else {
            cyx cyxVar = this.f14179b;
            if (cyxVar != null) {
                cyxVar.dq(fzcVar, dlvVar, dlvVar);
            }
        }
        this.f14178a.removeMessages(1001);
    }
}
