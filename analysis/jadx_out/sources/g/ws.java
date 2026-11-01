package g;

import android.os.Bundle;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ws implements frp {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bhz f20238a;

    public ws(bhz bhzVar) {
        this.f20238a = bhzVar;
    }

    @Override // g.frp
    public final void b(String str, String str2, Bundle bundle) {
        bhz bhzVar = this.f20238a;
        bhzVar.l(new sp(bhzVar, str, str2, bundle, true));
    }

    @Override // g.frp
    public final void c(String str, String str2, Bundle bundle) {
        bhz bhzVar = this.f20238a;
        bhzVar.l(new ejs(bhzVar, str, str2, bundle, 0));
    }

    @Override // g.frp
    public final List d(String str, String str2) {
        return this.f20238a.k(str, str2);
    }

    @Override // g.frp
    public final Map e(String str, String str2, boolean z) {
        return this.f20238a.n(str, str2, z);
    }

    @Override // g.frp
    public final void f(Bundle bundle) {
        bhz bhzVar = this.f20238a;
        bhzVar.l(new dhq(bhzVar, bundle, 0));
    }

    @Override // g.frp
    public final int zza(String str) {
        return this.f20238a.m(str);
    }

    @Override // g.frp
    public final long zzb() {
        return this.f20238a.i();
    }

    @Override // g.frp
    public final String zzh() {
        bay bayVar = new bay();
        bhz bhzVar = this.f20238a;
        bhzVar.l(new flf(bhzVar, bayVar, 1));
        return (String) bay.c(String.class, bayVar.d(50L));
    }

    @Override // g.frp
    public final String zzi() {
        bay bayVar = new bay();
        bhz bhzVar = this.f20238a;
        bhzVar.l(new flf(bhzVar, bayVar, 4));
        return (String) bay.c(String.class, bayVar.d(500L));
    }

    @Override // g.frp
    public final String zzj() {
        bay bayVar = new bay();
        bhz bhzVar = this.f20238a;
        bhzVar.l(new flf(bhzVar, bayVar, 3));
        return (String) bay.c(String.class, bayVar.d(500L));
    }

    @Override // g.frp
    public final String zzk() {
        bay bayVar = new bay();
        bhz bhzVar = this.f20238a;
        bhzVar.l(new flf(bhzVar, bayVar, 0));
        return (String) bay.c(String.class, bayVar.d(500L));
    }

    @Override // g.frp
    public final void zzp(String str) {
        bhz bhzVar = this.f20238a;
        bhzVar.l(new alh(bhzVar, str, 0));
    }

    @Override // g.frp
    public final void zzr(String str) {
        bhz bhzVar = this.f20238a;
        bhzVar.l(new alh(bhzVar, str, 1));
    }
}
