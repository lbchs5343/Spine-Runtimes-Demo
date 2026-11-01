package g;

import com.google.android.gms.internal.ads.zzbml;

/* loaded from: classes3.dex */
public final class alu extends grh {

    /* renamed from: a, reason: collision with root package name */
    public final df f10457a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbml f10458b;

    public alu(df dfVar, zzbml zzbmlVar) {
        this.f10457a = dfVar;
        this.f10458b = zzbmlVar;
    }

    @Override // g.gpa
    public final void zzb(abz abzVar) {
        df dfVar = this.f10457a;
        if (dfVar != null) {
            dfVar.c(abzVar.zzb());
        }
    }

    @Override // g.gpa
    public final void zzc() {
        zzbml zzbmlVar;
        df dfVar = this.f10457a;
        if (dfVar == null || (zzbmlVar = this.f10458b) == null) {
            return;
        }
        dfVar.d(zzbmlVar);
    }
}
