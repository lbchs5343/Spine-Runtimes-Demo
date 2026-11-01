package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzaox;
import com.google.android.gms.internal.ads.zzaps;
import com.google.android.gms.internal.ads.zzaqw;
import com.google.android.gms.internal.ads.zzbcn;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class bvv {

    /* renamed from: a, reason: collision with root package name */
    public static zzaps f12289a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f12290b = new Object();

    public bvv(Context context) {
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (f12290b) {
            try {
                if (f12289a == null) {
                    zzbcn.zza(context);
                    f12289a = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzev)).booleanValue() ? abe.d(context) : zzaqw.zza(context, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static dlc c(int i, String str, HashMap hashMap, byte[] bArr) {
        dlc dlcVar = new dlc();
        ffr ffrVar = new ffr(str, 14, dlcVar);
        dzz dzzVar = new dzz();
        ahu ahuVar = new ahu(i, str, dlcVar, ffrVar, bArr, hashMap, dzzVar);
        if (dzz.g()) {
            try {
                Map zzl = ahuVar.zzl();
                byte[] bArr2 = bArr == null ? null : bArr;
                if (dzz.g()) {
                    dzzVar.h("onNetworkRequest", new duw(str, "GET", zzl, bArr2, 12));
                }
            } catch (zzaox e2) {
                agd.b(e2.getMessage());
            }
        }
        f12289a.zza(ahuVar);
        return dlcVar;
    }
}
