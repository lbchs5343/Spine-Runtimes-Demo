package g;

import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzdsh;
import com.google.android.gms.internal.ads.zzdsr;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class bgq {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsr f11531a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f11532b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f11533c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11534d;

    /* renamed from: f, reason: collision with root package name */
    public ConcurrentHashMap f11536f;

    /* renamed from: g, reason: collision with root package name */
    public final long f11537g;
    public final boolean h;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayDeque f11535e = new ArrayDeque();
    public final ArrayDeque i = new ArrayDeque();

    public bgq(zzdsr zzdsrVar) {
        this.f11531a = zzdsrVar;
        zzbce zzbceVar = zzbcn.zzgM;
        edt edtVar = edt.f15376a;
        this.f11534d = ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue();
        zzbce zzbceVar2 = zzbcn.zzgN;
        zzbcl zzbclVar = edtVar.f15379d;
        this.f11537g = ((Long) zzbclVar.zza(zzbceVar2)).longValue();
        this.h = ((Boolean) zzbclVar.zza(zzbcn.zzgR)).booleanValue();
        this.f11532b = ((Boolean) zzbclVar.zza(zzbcn.zzgQ)).booleanValue();
        this.f11533c = DesugarCollections.synchronizedMap(new heu(this));
    }

    public final synchronized boolean j(String str, String str2) {
        ckv ckvVar = (ckv) this.f11533c.get(str);
        if (ckvVar != null) {
            if (ckvVar.f13042c.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public final synchronized void k(zzdsh zzdshVar) {
        try {
            try {
                if (this.h) {
                    ArrayDeque arrayDeque = this.i;
                    ArrayDeque clone = arrayDeque.clone();
                    arrayDeque.clear();
                    ArrayDeque arrayDeque2 = this.f11535e;
                    ArrayDeque clone2 = arrayDeque2.clone();
                    arrayDeque2.clear();
                    zzcaj.zza.execute(new chq(this, zzdshVar, clone, clone2, 10, false));
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final synchronized String l(String str, zzdsh zzdshVar) {
        try {
            ckv ckvVar = (ckv) this.f11533c.get(str);
            zzdshVar.zzb().put("request_id", str);
            if (ckvVar == null) {
                zzdshVar.zzb().put("mhit", "false");
                return null;
            }
            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhj)).booleanValue()) {
                this.f11533c.remove(str);
            }
            String str2 = ckvVar.f13041b;
            zzdshVar.zzb().put("mhit", "true");
            return str2;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void m(zzdsh zzdshVar, ArrayDeque arrayDeque, String str) {
        Pair pair;
        while (!arrayDeque.isEmpty()) {
            Pair pair2 = (Pair) arrayDeque.poll();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(zzdshVar.zzb());
            this.f11536f = concurrentHashMap;
            concurrentHashMap.put("action", "ev");
            this.f11536f.put("e_r", str);
            this.f11536f.put("e_id", (String) pair2.first);
            if (this.f11532b) {
                try {
                    JSONObject jSONObject = new JSONObject((String) pair2.second);
                    pair = new Pair(dzm.az(jSONObject.getJSONObject("extras").getString("query_info_type")), jSONObject.getString("request_agent"));
                } catch (JSONException unused) {
                    pair = new Pair("", "");
                }
                ConcurrentHashMap concurrentHashMap2 = this.f11536f;
                String str2 = (String) pair.first;
                if (!TextUtils.isEmpty(str2)) {
                    concurrentHashMap2.put("e_type", str2);
                }
                ConcurrentHashMap concurrentHashMap3 = this.f11536f;
                String str3 = (String) pair.second;
                if (!TextUtils.isEmpty(str3)) {
                    concurrentHashMap3.put("e_agent", str3);
                }
            }
            this.f11531a.zzf(this.f11536f);
        }
    }

    public final synchronized void n(String str) {
        this.f11533c.remove(str);
    }

    public final synchronized boolean o(int i, String str, String str2) {
        ckv ckvVar = (ckv) this.f11533c.get(str);
        if (ckvVar == null) {
            return false;
        }
        ckvVar.f13042c.add(str2);
        return ckvVar.f13042c.size() < i;
    }

    public final synchronized void p() {
        ti.f20033a.v.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        try {
            Iterator it = this.f11533c.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (currentTimeMillis - ((ckv) entry.getValue()).f13040a.longValue() <= this.f11537g) {
                    break;
                }
                this.i.add(new Pair((String) entry.getKey(), ((ckv) entry.getValue()).f13041b));
                it.remove();
            }
        } catch (ConcurrentModificationException e2) {
            ti.f20033a.f20034ab.zzw(e2, "QueryJsonMap.removeExpiredEntries");
        }
    }
}
