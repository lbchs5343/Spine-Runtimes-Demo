package g;

import android.os.Message;

/* loaded from: classes.dex */
public final class bye implements ank {

    /* renamed from: a, reason: collision with root package name */
    public fzc f12435a;

    /* renamed from: b, reason: collision with root package name */
    public dlv f12436b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12437c;

    /* renamed from: d, reason: collision with root package name */
    public giy f12438d;

    /* renamed from: e, reason: collision with root package name */
    public int f12439e;

    /* renamed from: f, reason: collision with root package name */
    public cyx f12440f;

    @Override // g.ank
    public final void dq(Message message) {
        giy giyVar = this.f12438d;
        if (message.what != 1001) {
            return;
        }
        cyx cyxVar = this.f12440f;
        if (cyxVar != null) {
            fzc fzcVar = this.f12435a;
            dlv dlvVar = this.f12436b;
            cyxVar.dq(fzcVar, dlvVar, dlvVar);
        }
        if (this.f12437c) {
            giyVar.sendEmptyMessageDelayed(1001, this.f12439e);
        } else {
            giyVar.removeMessages(1001);
        }
    }
}
