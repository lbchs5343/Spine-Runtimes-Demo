package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzapl;
import com.google.android.gms.internal.ads.zzapp;
import com.google.android.gms.internal.ads.zzaps;
import com.google.android.gms.internal.ads.zzaqe;
import com.google.android.gms.internal.ads.zzaql;
import com.google.android.gms.internal.ads.zzaqq;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzblo;
import com.google.android.gms.internal.ads.zzfsb;
import com.google.android.gms.internal.ads.zzfsc;
import java.io.File;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class abe extends zzaqe {

    /* renamed from: c, reason: collision with root package name */
    public final Context f9911c;

    public abe(Context context, zzaqq zzaqqVar) {
        super(zzaqqVar);
        this.f9911c = context;
    }

    public static zzaps d(Context context) {
        zzaps zzapsVar = new zzaps(new zzaql(new File(zzfsc.zza(zzfsb.zza(), context.getCacheDir(), "admob_volley")), 20971520), new abe(context, new zzaqq(null, null)), 4);
        zzapsVar.zzd();
        return zzapsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqe, com.google.android.gms.internal.ads.zzapi
    public final zzapl zza(zzapp zzappVar) {
        if (zzappVar.zza() == 0) {
            if (Pattern.matches((String) edt.f15376a.f15379d.zza(zzbcn.zzew), zzappVar.zzk())) {
                mx mxVar = cbv.f12612a.f12615d;
                gna gnaVar = gna.i;
                Context context = this.f9911c;
                if (gnaVar.l(context, 13400000) == 0) {
                    zzapl zza = new zzblo(context).zza(zzappVar);
                    if (zza != null) {
                        agd.e("Got gmscore asset response: ".concat(String.valueOf(zzappVar.zzk())));
                        return zza;
                    }
                    agd.e("Failed to get gmscore asset response: ".concat(String.valueOf(zzappVar.zzk())));
                }
            }
        }
        return super.zza(zzappVar);
    }
}
