package g;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import com.google.android.gms.internal.ads.zzata;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzavx;
import com.google.android.gms.internal.ads.zzavy;
import com.google.android.gms.internal.ads.zzawg;
import com.google.android.gms.internal.ads.zzawm;
import com.google.android.gms.internal.ads.zzawo;
import com.google.android.gms.internal.ads.zzfpr;
import com.google.android.gms.internal.ads.zzfqi;
import com.google.android.gms.internal.ads.zzfro;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class gxv implements zzfro {

    /* renamed from: a, reason: collision with root package name */
    public Object f18977a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18978b;

    /* renamed from: c, reason: collision with root package name */
    public Object f18979c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18980d;

    /* renamed from: e, reason: collision with root package name */
    public Object f18981e;

    /* renamed from: f, reason: collision with root package name */
    public Object f18982f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f18983g;
    public final Object h;
    public Object i;

    public gxv(Context context, flk flkVar, gkr gkrVar, egu eguVar, WorkDatabase workDatabase, fkj fkjVar, ArrayList arrayList) {
        this.f18980d = 2;
        bff.p(context, "context");
        this.f18983g = flkVar;
        this.h = gkrVar;
        this.f18978b = eguVar;
        this.f18979c = workDatabase;
        this.f18981e = fkjVar;
        this.i = arrayList;
        Context applicationContext = context.getApplicationContext();
        bff.e(applicationContext, "context.applicationContext");
        this.f18977a = applicationContext;
        this.f18982f = new dsp();
    }

    public gxv(zzfpr zzfprVar, zzfqi zzfqiVar, zzawm zzawmVar, zzavy zzavyVar, zzavi zzaviVar, zzawo zzawoVar, zzawg zzawgVar, zzavx zzavxVar) {
        this.f18980d = 3;
        this.f18983g = zzfprVar;
        this.h = zzfqiVar;
        this.f18978b = zzawmVar;
        this.f18979c = zzavyVar;
        this.f18981e = zzaviVar;
        this.i = zzawoVar;
        this.f18977a = zzawgVar;
        this.f18982f = zzavxVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public gxv(gxv gxvVar, fza fzaVar) {
        this((hed) gxvVar.f18983g, (eii) gxvVar.h, fzaVar, (fza) null, (fon) gxvVar.f18978b, (Set) gxvVar.f18977a, (List) gxvVar.f18982f);
        this.f18980d = 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public gxv(hed hedVar, eii eiiVar, fza fzaVar, fza fzaVar2) {
        this(hedVar, eiiVar, fzaVar, fzaVar2, new fon(hedVar), new HashSet(), new ArrayList());
        this.f18980d = 0;
    }

    public gxv(hed hedVar, eii eiiVar, fza fzaVar, fza fzaVar2, fon fonVar, Set set, List list) {
        this.f18980d = 0;
        this.f18983g = hedVar;
        this.h = eiiVar;
        this.f18979c = fzaVar;
        this.f18981e = fzaVar2;
        this.f18978b = fonVar;
        this.f18977a = set;
        this.f18982f = list;
    }

    public gxv(hed hedVar, eln elnVar) {
        this.f18980d = 1;
        this.f18978b = new ArrayList();
        this.f18983g = hedVar;
        this.h = elnVar;
    }

    public static gxv j(gxv gxvVar) {
        return new gxv((hed) gxvVar.f18983g, eii.d((eii) gxvVar.h), (fza) gxvVar.f18981e, (fza) gxvVar.f18979c, (fon) gxvVar.f18978b, (Set) gxvVar.f18977a, (List) gxvVar.f18982f);
    }

    public HashMap k() {
        HashMap hashMap = new HashMap();
        zzfpr zzfprVar = (zzfpr) this.f18983g;
        zzata zzb = ((zzfqi) this.h).zzb();
        hashMap.put(ada.COLUMN_VALUE, zzfprVar.zzd());
        hashMap.put("gms", Boolean.valueOf(zzfprVar.zzg()));
        hashMap.put("int", zzb.zzh());
        hashMap.put("attts", Long.valueOf(zzb.zzf().zza()));
        hashMap.put("att", zzb.zzf().zzd());
        hashMap.put("attkid", zzb.zzf().zzf());
        hashMap.put("up", Boolean.valueOf(((zzavy) this.f18979c).f4530a));
        hashMap.put("t", new Throwable());
        zzawg zzawgVar = (zzawg) this.f18977a;
        if (zzawgVar != null) {
            hashMap.put("tcq", Long.valueOf(zzawgVar.zzc()));
            hashMap.put("tpq", Long.valueOf(zzawgVar.zzg()));
            hashMap.put("tcv", Long.valueOf(zzawgVar.zzd()));
            hashMap.put("tpv", Long.valueOf(zzawgVar.zzh()));
            hashMap.put("tchv", Long.valueOf(zzawgVar.zzb()));
            hashMap.put("tphv", Long.valueOf(zzawgVar.zzf()));
            hashMap.put("tcc", Long.valueOf(zzawgVar.zza()));
            hashMap.put("tpc", Long.valueOf(zzawgVar.zze()));
        }
        return hashMap;
    }

    public fza l() {
        fon fonVar = (fon) this.f18978b;
        return (fza) fonVar.f17142a.ak.get(fonVar.f17143b.nextSetBit(0));
    }

    public void m(gxv... gxvVarArr) {
        for (gxv gxvVar : gxvVarArr) {
            ((fon) this.f18978b).f17143b.or(((fon) gxvVar.f18978b).f17143b);
            ((Set) this.f18977a).addAll((Set) gxvVar.f18977a);
            ((List) this.f18982f).addAll((List) gxvVar.f18982f);
        }
    }

    public String toString() {
        switch (this.f18980d) {
            case 0:
                return "IfInfo: then: " + ((fza) this.f18979c) + ", else: " + ((fza) this.f18981e);
            default:
                return super.toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfro
    public Map zza() {
        zzawm zzawmVar = (zzawm) this.f18978b;
        HashMap k = k();
        k.put("lts", Long.valueOf(zzawmVar.zza()));
        return k;
    }

    @Override // com.google.android.gms.internal.ads.zzfro
    public Map zzb() {
        zzawo zzawoVar = (zzawo) this.i;
        HashMap k = k();
        zzata zza = ((zzfqi) this.h).zza();
        k.put("gai", Boolean.valueOf(((zzfpr) this.f18983g).zzh()));
        k.put("did", zza.zzg());
        k.put("dst", Integer.valueOf(zza.zzal() - 1));
        k.put("doo", Boolean.valueOf(zza.zzai()));
        zzavi zzaviVar = (zzavi) this.f18981e;
        if (zzaviVar != null) {
            k.put("nt", Long.valueOf(zzaviVar.zza()));
        }
        if (zzawoVar != null) {
            k.put("vs", Long.valueOf(zzawoVar.zzc()));
            k.put("vf", Long.valueOf(zzawoVar.zzb()));
        }
        return k;
    }

    @Override // com.google.android.gms.internal.ads.zzfro
    public Map zzc() {
        zzavx zzavxVar = (zzavx) this.f18982f;
        HashMap k = k();
        if (zzavxVar != null) {
            k.put("vst", zzavxVar.zza());
        }
        return k;
    }
}
