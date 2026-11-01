package g;

import com.google.android.gms.internal.ads.zzcfk;

/* loaded from: classes3.dex */
public final class bwj implements fim {

    /* renamed from: a, reason: collision with root package name */
    public final zzcfk f12318a;

    /* renamed from: b, reason: collision with root package name */
    public final fim f12319b;

    public bwj(zzcfk zzcfkVar, fim fimVar) {
        this.f12318a = zzcfkVar;
        this.f12319b = fimVar;
    }

    @Override // g.fim
    public final void zzdH() {
    }

    @Override // g.fim
    public final void zzdk() {
    }

    @Override // g.fim
    public final void zzdq() {
        fim fimVar = this.f12319b;
        if (fimVar != null) {
            fimVar.zzdq();
        }
    }

    @Override // g.fim
    public final void zzdr() {
        fim fimVar = this.f12319b;
        if (fimVar != null) {
            fimVar.zzdr();
        }
        this.f12318a.zzaa();
    }

    @Override // g.fim
    public final void zzdt() {
        fim fimVar = this.f12319b;
        if (fimVar != null) {
            fimVar.zzdt();
        }
    }

    @Override // g.fim
    public final void zzdu(int i) {
        fim fimVar = this.f12319b;
        if (fimVar != null) {
            fimVar.zzdu(i);
        }
        this.f12318a.zzY();
    }
}
