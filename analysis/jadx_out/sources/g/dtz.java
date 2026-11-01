package g;

import android.content.SharedPreferences;
import com.google.android.gms.internal.ads.zzbyy;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class dtz implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14806a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14807b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f14808c;

    public /* synthetic */ dtz(Object obj, String str, int i) {
        this.f14806a = i;
        this.f14808c = obj;
        this.f14807b = str;
    }

    private final void d(SharedPreferences sharedPreferences, String str) {
        synchronized (((epq) this.f14808c)) {
            try {
                Iterator it = ((epq) this.f14808c).f15948c.iterator();
                while (it.hasNext()) {
                    zzbyy zzbyyVar = (zzbyy) it.next();
                    String str2 = this.f14807b;
                    epq epqVar = zzbyyVar.zza;
                    Map map = zzbyyVar.zzb;
                    epqVar.getClass();
                    if (map.containsKey(str2) && ((Set) map.get(str2)).contains(str)) {
                        epqVar.f15946a.zzd();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        switch (this.f14806a) {
            case 0:
                d(sharedPreferences, str);
                return;
            default:
                synchronized (((fli) this.f14808c)) {
                    try {
                        Iterator it = ((fli) this.f14808c).f16973b.iterator();
                        while (it.hasNext()) {
                            ot otVar = (ot) it.next();
                            String str2 = this.f14807b;
                            HashMap hashMap = otVar.f19773a;
                            if (hashMap.containsKey(str2) && ((Set) hashMap.get(str2)).contains(str)) {
                                ((cmo) ti.f20033a.f20034ab.zzi()).ak(false);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
