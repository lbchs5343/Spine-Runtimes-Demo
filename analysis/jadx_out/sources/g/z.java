package g;

import com.google.android.gms.internal.ads.zzcbt;

/* loaded from: classes3.dex */
public final class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20376a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20377b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcbt f20378c;

    public z(zzcbt zzcbtVar) {
        this.f20377b = 1;
        this.f20376a = false;
        this.f20378c = zzcbtVar;
    }

    public z(zzcbt zzcbtVar, boolean z) {
        this.f20377b = 0;
        this.f20376a = z;
        this.f20378c = zzcbtVar;
    }

    public void d() {
        this.f20376a = true;
        this.f20378c.v();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f20377b;
        zzcbt zzcbtVar = this.f20378c;
        switch (i) {
            case 0:
                String[] strArr = {"isVisible", String.valueOf(this.f20376a)};
                int i2 = zzcbt.f5146a;
                zzcbtVar.u("windowVisibilityChanged", strArr);
                break;
            default:
                if (!this.f20376a) {
                    zzcbtVar.v();
                    gfx gfxVar = esy.f16117a;
                    gfxVar.removeCallbacks(this);
                    gfxVar.postDelayed(this, 250L);
                    break;
                }
                break;
        }
    }
}
