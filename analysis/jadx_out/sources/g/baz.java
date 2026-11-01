package g;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbqh;

/* loaded from: classes3.dex */
public final class baz implements gon {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbqh f11205a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11206b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbpm f11207c;

    public /* synthetic */ baz(zzbqh zzbqhVar, zzbpm zzbpmVar, int i) {
        this.f11206b = i;
        this.f11207c = zzbpmVar;
        this.f11205a = zzbqhVar;
    }

    @Override // g.gon
    public final void ac(ezz ezzVar) {
        switch (this.f11206b) {
            case 0:
                int i = ezzVar.f16447d;
                zzbpm zzbpmVar = this.f11207c;
                try {
                    String canonicalName = this.f11205a.f4926c.getClass().getCanonicalName();
                    String str = ezzVar.f16448e;
                    agd.c(canonicalName + "failed to loaded mediation ad: ErrorCode = " + i + ". ErrorMessage = " + str + ". ErrorDomain = " + ezzVar.f16449f);
                    zzbpmVar.zzh(ezzVar.h());
                    zzbpmVar.zzi(i, str);
                    zzbpmVar.zzg(i);
                    break;
                } catch (RemoteException e2) {
                    agd.f("", e2);
                    return;
                }
            default:
                int i2 = ezzVar.f16447d;
                zzbpm zzbpmVar2 = this.f11207c;
                try {
                    String canonicalName2 = this.f11205a.f4926c.getClass().getCanonicalName();
                    String str2 = ezzVar.f16448e;
                    agd.c(canonicalName2 + "failed to load mediation ad: ErrorCode = " + i2 + ". ErrorMessage = " + str2 + ". ErrorDomain = " + ezzVar.f16449f);
                    zzbpmVar2.zzh(ezzVar.h());
                    zzbpmVar2.zzi(i2, str2);
                    zzbpmVar2.zzg(i2);
                    break;
                } catch (RemoteException e3) {
                    agd.f("", e3);
                }
        }
    }
}
