package g;

import com.google.android.gms.internal.ads.zzbry;

/* loaded from: classes3.dex */
public final class iy implements fim {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbry f19454a;

    public iy(zzbry zzbryVar) {
        this.f19454a = zzbryVar;
    }

    @Override // g.fim
    public final void zzdH() {
        agd.c("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // g.fim
    public final void zzdk() {
        agd.c("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // g.fim
    public final void zzdq() {
        agd.c("Delay close AdMobCustomTabsAdapter overlay.");
    }

    @Override // g.fim
    public final void zzdr() {
        agd.c("Opening AdMobCustomTabsAdapter overlay.");
        zzbry zzbryVar = this.f19454a;
        zzbryVar.f4943b.onAdOpened(zzbryVar);
    }

    @Override // g.fim
    public final void zzdt() {
    }

    @Override // g.fim
    public final void zzdu(int i) {
        agd.c("AdMobCustomTabsAdapter overlay is closed.");
        zzbry zzbryVar = this.f19454a;
        zzbryVar.f4943b.onAdClosed(zzbryVar);
    }
}
