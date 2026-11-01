package g;

import com.google.android.gms.internal.ads.zzcbt;

/* loaded from: classes3.dex */
public final class cxg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13684a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzcbt f13685b;

    public /* synthetic */ cxg(zzcbt zzcbtVar, int i) {
        this.f13684a = i;
        this.f13685b = zzcbtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f13684a;
        zzcbt zzcbtVar = this.f13685b;
        switch (i) {
            case 0:
                int i2 = zzcbt.f5146a;
                zzcbtVar.u("surfaceCreated", new String[0]);
                break;
            default:
                int i3 = zzcbt.f5146a;
                zzcbtVar.u("surfaceDestroyed", new String[0]);
                break;
        }
    }
}
