package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class fli {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f16972a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f16973b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final Context f16974c;

    public fli(Context context) {
        this.f16974c = context;
    }

    public final void d() {
        zzbce zzbceVar = zzbcn.zzkb;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            esy esyVar = ti.f20033a.z;
            HashMap q = esy.q((String) edtVar.f15379d.zza(zzbcn.zzkg));
            for (String str : q.keySet()) {
                synchronized (this) {
                    try {
                        if (!this.f16972a.containsKey(str)) {
                            SharedPreferences defaultSharedPreferences = Objects.equals(str, "__default__") ? PreferenceManager.getDefaultSharedPreferences(this.f16974c) : this.f16974c.getSharedPreferences(str, 0);
                            dtz dtzVar = new dtz(this, str, 1);
                            this.f16972a.put(str, dtzVar);
                            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(dtzVar);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            e(new ot(q));
        }
    }

    public final synchronized void e(ot otVar) {
        this.f16973b.add(otVar);
    }
}
