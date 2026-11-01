package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.internal.ads.zzbym;
import com.google.android.gms.internal.ads.zzbyy;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class epq {

    /* renamed from: a, reason: collision with root package name */
    public final zzbym f15946a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f15947b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f15948c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final Context f15949d;

    public epq(Context context, zzbym zzbymVar) {
        this.f15949d = context;
        this.f15946a = zzbymVar;
    }

    public final synchronized void e(String str) {
        try {
            if (this.f15947b.containsKey(str)) {
                return;
            }
            SharedPreferences defaultSharedPreferences = Objects.equals(str, "__default__") ? PreferenceManager.getDefaultSharedPreferences(this.f15949d) : this.f15949d.getSharedPreferences(str, 0);
            dtz dtzVar = new dtz(this, str, 0);
            this.f15947b.put(str, dtzVar);
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(dtzVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void f(zzbyy zzbyyVar) {
        this.f15948c.add(zzbyyVar);
    }
}
