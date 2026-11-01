package g;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.ads.zzfiv;
import com.google.android.gms.internal.ads.zzfqs;
import com.google.android.gms.internal.ads.zzfxd;
import com.google.android.gms.internal.ads.zzgee;
import java.nio.charset.Charset;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class dnb implements zzgee, eco, zzfqs, bea {

    /* renamed from: a, reason: collision with root package name */
    public final Object f14452a;

    public dnb(ctv ctvVar) {
        Charset charset = cua.f13515a;
        this.f14452a = ctvVar;
        ctvVar.f13500f = this;
    }

    public /* synthetic */ dnb(Object obj) {
        this.f14452a = obj;
    }

    public void b(int i, Object obj, dxm dxmVar) {
        bsv bsvVar = (bsv) obj;
        ctv ctvVar = (ctv) this.f14452a;
        ctvVar.s((i << 3) | 2);
        ctvVar.s(bsvVar.k(dxmVar));
        dxmVar.ad(bsvVar, ctvVar.f13500f);
    }

    public boolean c() {
        cyg cygVar = (cyg) this.f14452a;
        if (!TextUtils.isEmpty(cygVar.aa)) {
            return false;
        }
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        return Log.isLoggable(bgmVar.al(), 3);
    }

    public void d(int i, Object obj, dxm dxmVar) {
        ctv ctvVar = (ctv) this.f14452a;
        ctvVar.m(i, 3);
        dxmVar.ad((bsv) obj, ctvVar.f13500f);
        ctvVar.m(i, 4);
    }

    @Override // g.bea
    public Object then(ci ciVar) {
        gtb gtbVar = (gtb) this.f14452a;
        if (ciVar.a() || ((chw) ciVar).f12905e) {
            return ciVar;
        }
        Exception b2 = ciVar.b();
        if (!(b2 instanceof dmw)) {
            return ciVar;
        }
        int statusCode = ((dmw) b2).mStatus.getStatusCode();
        if (statusCode == 43001 || statusCode == 43002 || statusCode == 43003 || statusCode == 17) {
            return ((fpd) gtbVar.f18712b).a();
        }
        if (statusCode == 43000) {
            Exception exc = new Exception("Failed to get app set ID due to an internal error. Please try again later.");
            chw chwVar = new chw();
            chwVar.l(exc);
            return chwVar;
        }
        if (statusCode != 15) {
            return ciVar;
        }
        Exception exc2 = new Exception("The operation to get app set ID timed out. Please try again later.");
        chw chwVar2 = new chw();
        chwVar2.l(exc2);
        return chwVar2;
    }

    @Override // g.eco
    public /* synthetic */ Iterator y(zzfxd zzfxdVar, CharSequence charSequence) {
        return new czi(this, charSequence);
    }

    @Override // com.google.android.gms.internal.ads.zzfqs
    public void zza(int i, long j) {
        ((gvq) this.f14452a).f18826a.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        agd.d("Failed to get offline signal database: ".concat(String.valueOf(th.getMessage())));
    }

    @Override // com.google.android.gms.internal.ads.zzfqs
    public void zzb(int i, long j, String str) {
        ((gvq) this.f14452a).f18826a.zze(i, System.currentTimeMillis() - j, str);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            ((zzfiv) this.f14452a).zza((SQLiteDatabase) obj);
        } catch (Exception e2) {
            agd.d("Error executing function on offline signal database: ".concat(String.valueOf(e2.getMessage())));
        }
    }
}
