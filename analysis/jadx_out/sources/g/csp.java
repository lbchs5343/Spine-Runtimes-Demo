package g;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class csp extends os {

    /* renamed from: g, reason: collision with root package name */
    public final AtomicReference f13446g;
    public boolean h;
    public boolean j;
    public final bzv k;
    public rs l;
    public final AtomicLong m;
    public int n;
    public eoa o;
    public ffm p;
    public final Object q;
    public int r;
    public final bgb s;
    public long t;
    public final CopyOnWriteArraySet u;

    public csp(cyg cygVar) {
        super(cygVar);
        this.u = new CopyOnWriteArraySet();
        this.q = new Object();
        this.h = true;
        this.s = new bgb(4, this);
        this.f13446g = new AtomicReference();
        this.l = new rs(null, null);
        this.n = 100;
        this.t = -1L;
        this.r = 100;
        this.m = new AtomicLong(0L);
        this.k = new bzv(7, cygVar);
    }

    public static void v(csp cspVar, rs rsVar, int i, long j, boolean z, boolean z2) {
        cspVar._e();
        cyg cygVar = (cyg) cspVar.z;
        cspVar.zza();
        if (j <= cspVar.t) {
            int i2 = cspVar.r;
            rs rsVar2 = rs.f19921a;
            if (i2 <= i) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.p.i(rsVar, "Dropped out-of-date consent setting, proposed settings");
                return;
            }
        }
        gmr gmrVar = cygVar.f13744b;
        cyg.ai(gmrVar);
        gmrVar._e();
        if (!gmrVar.aq(i)) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.p.i(Integer.valueOf(i), "Lower precedence consent source ignored, proposed source");
            return;
        }
        SharedPreferences.Editor edit = gmrVar.ar().edit();
        edit.putString("consent_settings", rsVar.f());
        edit.putInt("consent_source", i);
        edit.apply();
        cspVar.t = j;
        cspVar.r = i;
        dbb ao = cygVar.ao();
        ao._e();
        cyg cygVar2 = (cyg) ao.z;
        ao.zza();
        if (z) {
            cygVar2.getClass();
            cygVar2.an().j();
        }
        if (ao.w()) {
            ao.s(new bqs(ao, ao.q(false), 3));
        }
        if (z2) {
            cygVar.ao().r(new AtomicReference());
        }
    }

    public static /* bridge */ /* synthetic */ void w(csp cspVar, rs rsVar, rs rsVar2) {
        boolean z;
        gxx[] gxxVarArr = {gxx.ANALYTICS_STORAGE, gxx.AD_STORAGE};
        int i = 0;
        while (true) {
            if (i >= 2) {
                z = false;
                break;
            }
            gxx gxxVar = gxxVarArr[i];
            if (!rsVar2.g(gxxVar) && rsVar.g(gxxVar)) {
                z = true;
                break;
            }
            i++;
        }
        boolean i2 = rsVar.i(rsVar2, gxx.ANALYTICS_STORAGE, gxx.AD_STORAGE);
        if (z || i2) {
            ((cyg) cspVar.z).at().w();
        }
    }

    public final void al() {
        _e();
        cyg cygVar = (cyg) this.z;
        gmr gmrVar = cygVar.f13744b;
        bgm bgmVar = cygVar.z;
        czz czzVar = cygVar.f13743ab;
        cyg.ai(gmrVar);
        String i = gmrVar.al.i();
        if (i != null) {
            if ("unset".equals(i)) {
                czzVar.getClass();
                ax("app", System.currentTimeMillis(), null, "_npa");
            } else {
                Long valueOf = Long.valueOf(true != "true".equals(i) ? 0L : 1L);
                czzVar.getClass();
                ax("app", System.currentTimeMillis(), valueOf, "_npa");
            }
        }
        if (!cygVar.as() || !this.h) {
            cyg.ak(bgmVar);
            bgmVar.o.h("Updating Scion state (FE)");
            dbb ao = cygVar.ao();
            ao._e();
            ao.zza();
            ao.s(new bqs(ao, ao.q(true), 2));
            return;
        }
        cyg.ak(bgmVar);
        bgmVar.o.h("Recording app launch after enabling measurement for the first time (FE)");
        am();
        ((dkg) blm.f11789a.f11790b.zza()).getClass();
        if (cygVar.f13747e.g(null, gad.j)) {
            cjv cjvVar = cygVar.n;
            cyg.aj(cjvVar);
            cjvVar.j.zza();
        }
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar.p(new djg(this, 1));
    }

    public final void am() {
        _e();
        zza();
        cyg cygVar = (cyg) this.z;
        boolean au = cygVar.au();
        dsd dsdVar = cygVar.f13747e;
        if (au) {
            if (dsdVar.g(null, gad.af)) {
                ((cyg) dsdVar.z).getClass();
                Boolean h = dsdVar.h("google_analytics_deferred_deep_link_enabled");
                if (h != null && h.booleanValue()) {
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.o.h("Deferred Deep Link feature enabled.");
                    fth fthVar = cygVar.j;
                    cyg.ak(fthVar);
                    fthVar.p(new djg(this, 0));
                }
            }
            dbb ao = cygVar.ao();
            ao._e();
            ao.zza();
            afh q = ao.q(true);
            ((cyg) ao.z).an().l(3, new byte[0]);
            ao.s(new bqs(ao, q, 1));
            this.h = false;
            gmr gmrVar = cygVar.f13744b;
            cyg.ai(gmrVar);
            gmrVar._e();
            String string = gmrVar.ar().getString("previous_os_version", null);
            ((cyg) gmrVar.z).ar().an();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = gmrVar.ar().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            cygVar.ar().an();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            au(LiveConfigKey.AUTO, "_ou", bundle);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void an(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3) {
        csp cspVar;
        ebl eblVar;
        gmr gmrVar;
        czz czzVar;
        bgm bgmVar;
        gmr gmrVar2;
        bgb bgbVar;
        boolean z4;
        cjv cjvVar;
        long j2;
        long j3;
        csp cspVar2;
        cjv cjvVar2;
        String str3;
        bgm bgmVar2;
        cjv cjvVar3;
        int size;
        int i;
        int i2;
        boolean l;
        Iterator it;
        cjv cjvVar4;
        ArrayList arrayList;
        int i3;
        Bundle[] bundleArr;
        int i4;
        int i5;
        Class<?> cls;
        String str4 = str;
        ckd.bf(str4);
        ckd.k(bundle);
        _e();
        zza();
        cyg cygVar = (cyg) this.z;
        boolean as = cygVar.as();
        Context context = cygVar.v;
        cjv cjvVar5 = cygVar.n;
        bcm bcmVar = cygVar.h;
        ebl eblVar2 = cygVar.af;
        gmr gmrVar3 = cygVar.f13744b;
        czz czzVar2 = cygVar.f13743ab;
        bgm bgmVar3 = cygVar.z;
        dkq dkqVar = cygVar.m;
        if (!as) {
            cyg.ak(bgmVar3);
            bgmVar3.o.h("Event not sent since app measurement is disabled");
            return;
        }
        List list = cygVar.at().l;
        if (list != null && !list.contains(str2)) {
            cyg.ak(bgmVar3);
            bgmVar3.o.e(str2, "Dropping non-safelisted event. event name, origin", str4);
            return;
        }
        if (!this.j) {
            this.j = true;
            try {
                if (cygVar.t) {
                    i5 = 1;
                    cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService");
                } else {
                    i5 = 1;
                    cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, context.getClassLoader());
                }
                try {
                    Class<?>[] clsArr = new Class[i5];
                    clsArr[0] = Context.class;
                    cls.getDeclaredMethod("initialize", clsArr).invoke(null, context);
                } catch (Exception e2) {
                    cyg.ak(bgmVar3);
                    bgmVar3.f11520g.i(e2, "Failed to invoke Tag Manager's initialize() method");
                }
            } catch (ClassNotFoundException unused) {
                cyg.ak(bgmVar3);
                bgmVar3.p.h("Tag Manager is not found and thus will not be used");
            }
        }
        if ("_cmp".equals(str2) && bundle.containsKey("gclid")) {
            String string = bundle.getString("gclid");
            czzVar2.getClass();
            czzVar = czzVar2;
            bgmVar = bgmVar3;
            gmrVar = gmrVar3;
            eblVar = eblVar2;
            cspVar = this;
            cspVar.ax(LiveConfigKey.AUTO, System.currentTimeMillis(), string, "_lgclid");
        } else {
            cspVar = this;
            eblVar = eblVar2;
            gmrVar = gmrVar3;
            czzVar = czzVar2;
            bgmVar = bgmVar3;
        }
        if (!z || dkq.f14324b[0].equals(str2)) {
            gmrVar2 = gmrVar;
        } else {
            cyg.ai(dkqVar);
            cyg.ai(gmrVar);
            gmrVar2 = gmrVar;
            dkqVar.bf(bundle, gmrVar2.w.p());
        }
        bgb bgbVar2 = cspVar.s;
        if (!z3 && !"_iap".equals(str2)) {
            cyg.ai(dkqVar);
            if (dkqVar.ba("event", str2)) {
                if (dkqVar.bn("event", dyd.i, dyd.h, str2)) {
                    ((cyg) dkqVar.z).getClass();
                    if (dkqVar.aw(40, "event", str2)) {
                        i4 = 0;
                    }
                } else {
                    i4 = 13;
                }
                if (i4 != 0) {
                    cyg.ak(bgmVar);
                    bgmVar.m.i(eblVar.f(str2), "Invalid public event name. Event will not be logged (FE)");
                    cyg.ai(dkqVar);
                    String s = dkq.s(40, str2, true);
                    int length = str2 != null ? str2.length() : 0;
                    cyg.ai(dkqVar);
                    dkq.v(bgbVar2, null, i4, "_ev", s, length);
                    return;
                }
            }
            i4 = 2;
            if (i4 != 0) {
            }
        }
        bgm bgmVar4 = bgmVar;
        cyg.aj(bcmVar);
        ein u = bcmVar.u(false);
        if (u != null && !bundle.containsKey("_sc")) {
            u.f15595a = true;
        }
        dkq.q(u, bundle, z && !z3);
        boolean equals = "am".equals(str4);
        boolean al = dkq.al(str2);
        if (z) {
            bgbVar = bgbVar2;
            if (cspVar.p != null && !al) {
                if (!equals) {
                    cyg.ak(bgmVar4);
                    bgmVar4.o.e(eblVar.f(str2), "Passing event to registered event handler (FE)", eblVar.j(bundle));
                    ckd.k(cspVar.p);
                    ffm ffmVar = cspVar.p;
                    ffmVar.getClass();
                    try {
                        etv etvVar = (etv) ((aad) ffmVar.f16709a);
                        Parcel _cd = etvVar._cd();
                        _cd.writeString(str4);
                        _cd.writeString(str2);
                        m.e(_cd, bundle);
                        _cd.writeLong(j);
                        etvVar.i(_cd, 1);
                    } catch (RemoteException e3) {
                        cyg cygVar2 = ((AppMeasurementDynamiteService) ffmVar.f16710b).f8992a;
                        if (cygVar2 != null) {
                            bgm bgmVar5 = cygVar2.z;
                            cyg.ak(bgmVar5);
                            bgmVar5.f11520g.i(e3, "Event interceptor threw exception");
                        }
                    }
                }
                z4 = true;
                if (cygVar.au()) {
                    cyg.ai(dkqVar);
                    int bl = dkqVar.bl(str2);
                    if (bl != 0) {
                        cyg.ak(bgmVar4);
                        bgmVar4.m.i(eblVar.f(str2), "Invalid event name. Event will not be logged (FE)");
                        cyg.ai(dkqVar);
                        String s2 = dkq.s(40, str2, true);
                        int length2 = str2 != null ? str2.length() : 0;
                        cyg.ai(dkqVar);
                        dkq.v(bgbVar, null, bl, "_ev", s2, length2);
                        return;
                    }
                    List unmodifiableList = Collections.unmodifiableList(Arrays.asList("_o", "_sn", "_sc", "_si"));
                    cyg.ai(dkqVar);
                    Bundle bi = dkqVar.bi(str2, bundle, unmodifiableList, z3);
                    ckd.k(bi);
                    cyg.aj(bcmVar);
                    String str5 = "_o";
                    if (bcmVar.u(false) == null || !"_ae".equals(str2)) {
                        cjvVar = cjvVar5;
                        j2 = 0;
                    } else {
                        cyg.aj(cjvVar5);
                        cjvVar = cjvVar5;
                        fcw fcwVar = cjvVar.k;
                        j2 = 0;
                        ((cyg) ((cjv) fcwVar.f16581b).z).f13743ab.getClass();
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        long j4 = elapsedRealtime - fcwVar.f16583e;
                        fcwVar.f16583e = elapsedRealtime;
                        if (j4 > 0) {
                            cyg.ai(dkqVar);
                            dkqVar.bs(bi, j4);
                        }
                    }
                    ((gbh) ear.f15205a.f15206b.zza()).getClass();
                    if (cygVar.f13747e.g(null, gad.q)) {
                        if (!LiveConfigKey.AUTO.equals(str4) && "_ssr".equals(str2)) {
                            cyg.ai(dkqVar);
                            cyg cygVar3 = (cyg) dkqVar.z;
                            String string2 = bi.getString("_ffr");
                            int i6 = gje.f18241a;
                            if (string2 == null || string2.trim().isEmpty()) {
                                string2 = null;
                            } else if (string2 != null) {
                                string2 = string2.trim();
                            }
                            gmr gmrVar4 = cygVar3.f13744b;
                            cyg.ai(gmrVar4);
                            String i7 = gmrVar4.f18414g.i();
                            if (string2 == i7 || (string2 != null && string2.equals(i7))) {
                                bgm bgmVar6 = cygVar3.z;
                                cyg.ak(bgmVar6);
                                bgmVar6.o.h("Not logging duplicate session_start_with_rollout event");
                                return;
                            } else {
                                gmr gmrVar5 = cygVar3.f13744b;
                                cyg.ai(gmrVar5);
                                gmrVar5.f18414g.l(string2);
                            }
                        } else if ("_ae".equals(str2)) {
                            cyg.ai(dkqVar);
                            gmr gmrVar6 = ((cyg) dkqVar.z).f13744b;
                            cyg.ai(gmrVar6);
                            String i8 = gmrVar6.f18414g.i();
                            if (!TextUtils.isEmpty(i8)) {
                                bi.putString("_ffr", i8);
                            }
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(bi);
                    cyg.ai(gmrVar2);
                    if (gmrVar2.k.f() > j2) {
                        cyg.ai(gmrVar2);
                        j3 = j;
                        if (gmrVar2.au(j3)) {
                            cyg.ai(gmrVar2);
                            if (gmrVar2.x.g()) {
                                cyg.ak(bgmVar4);
                                bgmVar4.f11519c.h("Current session is expired, remove the session number, ID, and engagement time");
                                czzVar.getClass();
                                bgmVar2 = bgmVar4;
                                cjvVar2 = cjvVar;
                                str3 = "_ae";
                                cspVar.ax(LiveConfigKey.AUTO, System.currentTimeMillis(), null, "_sid");
                                czzVar.getClass();
                                ax(LiveConfigKey.AUTO, System.currentTimeMillis(), null, "_sno");
                                czzVar.getClass();
                                ax(LiveConfigKey.AUTO, System.currentTimeMillis(), null, "_se");
                                cspVar2 = this;
                                if (bi.getLong("extend_session", j2) != 1) {
                                    cyg.ak(bgmVar2);
                                    bgmVar2.f11519c.h("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                                    cyg.aj(cjvVar2);
                                    cjvVar3 = cjvVar2;
                                    cjvVar3.j.g(j3, true);
                                } else {
                                    cjvVar3 = cjvVar2;
                                }
                                ArrayList arrayList3 = new ArrayList(bi.keySet());
                                Collections.sort(arrayList3);
                                size = arrayList3.size();
                                i = 0;
                                while (i < size) {
                                    String str6 = (String) arrayList3.get(i);
                                    if (str6 != null) {
                                        cyg.ai(dkqVar);
                                        cjvVar4 = cjvVar3;
                                        Object obj = bi.get(str6);
                                        arrayList = arrayList3;
                                        if (obj instanceof Bundle) {
                                            i3 = size;
                                            bundleArr = new Bundle[]{(Bundle) obj};
                                        } else {
                                            i3 = size;
                                            if (obj instanceof Parcelable[]) {
                                                Parcelable[] parcelableArr = (Parcelable[]) obj;
                                                bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                                            } else if (obj instanceof ArrayList) {
                                                ArrayList arrayList4 = (ArrayList) obj;
                                                bundleArr = (Bundle[]) arrayList4.toArray(new Bundle[arrayList4.size()]);
                                            } else {
                                                bundleArr = null;
                                            }
                                        }
                                        if (bundleArr != null) {
                                            bi.putParcelableArray(str6, bundleArr);
                                        }
                                    } else {
                                        cjvVar4 = cjvVar3;
                                        arrayList = arrayList3;
                                        i3 = size;
                                    }
                                    i++;
                                    arrayList3 = arrayList;
                                    size = i3;
                                    cjvVar3 = cjvVar4;
                                }
                                cjv cjvVar6 = cjvVar3;
                                i2 = 0;
                                while (i2 < arrayList2.size()) {
                                    Bundle bundle2 = (Bundle) arrayList2.get(i2);
                                    String str7 = i2 != 0 ? "_ep" : str2;
                                    String str8 = str5;
                                    bundle2.putString(str8, str4);
                                    if (z2) {
                                        cyg.ai(dkqVar);
                                        bundle2 = dkqVar.bu(bundle2);
                                    }
                                    Bundle bundle3 = bundle2;
                                    int i9 = i2;
                                    cjv cjvVar7 = cjvVar6;
                                    String str9 = str4;
                                    long j5 = j3;
                                    ctf ctfVar = new ctf(str7, new cde(bundle3), str9, j5);
                                    dbb ao = cygVar.ao();
                                    ao.getClass();
                                    cyg cygVar4 = (cyg) ao.z;
                                    ao._e();
                                    ao.zza();
                                    cygVar4.getClass();
                                    efm an = cygVar4.an();
                                    an.getClass();
                                    ArrayList arrayList5 = arrayList2;
                                    Parcel obtain = Parcel.obtain();
                                    fbe.b(ctfVar, obtain, 0);
                                    byte[] marshall = obtain.marshall();
                                    obtain.recycle();
                                    if (marshall.length > 131072) {
                                        bgm bgmVar7 = ((cyg) an.z).z;
                                        cyg.ak(bgmVar7);
                                        bgmVar7.f11517a.h("Event is too long for local database. Sending event directly to service");
                                        l = false;
                                    } else {
                                        l = an.l(0, marshall);
                                    }
                                    ao.s(new edg(ao, ao.q(true), l, ctfVar, 1));
                                    if (!z4) {
                                        Iterator it2 = cspVar2.u.iterator();
                                        while (it2.hasNext()) {
                                            ebc ebcVar = (ebc) it2.next();
                                            Bundle bundle4 = new Bundle(bundle3);
                                            ebcVar.getClass();
                                            try {
                                                etv etvVar2 = (etv) ebcVar.f15221a;
                                                Parcel _cd2 = etvVar2._cd();
                                                _cd2.writeString(str9);
                                                _cd2.writeString(str2);
                                                m.e(_cd2, bundle4);
                                                _cd2.writeLong(j5);
                                                it = it2;
                                                try {
                                                    etvVar2.i(_cd2, 1);
                                                } catch (RemoteException e4) {
                                                    e = e4;
                                                    cyg cygVar5 = ebcVar.f15222b.f8992a;
                                                    if (cygVar5 != null) {
                                                        bgm bgmVar8 = cygVar5.z;
                                                        cyg.ak(bgmVar8);
                                                        bgmVar8.f11520g.i(e, "Event listener threw exception");
                                                    }
                                                    it2 = it;
                                                }
                                            } catch (RemoteException e5) {
                                                e = e5;
                                                it = it2;
                                            }
                                            it2 = it;
                                        }
                                    }
                                    i2 = i9 + 1;
                                    arrayList2 = arrayList5;
                                    j3 = j5;
                                    str5 = str8;
                                    cjvVar6 = cjvVar7;
                                    str4 = str9;
                                }
                                cjv cjvVar8 = cjvVar6;
                                cyg.aj(bcmVar);
                                if (bcmVar.u(false) == null && str3.equals(str2)) {
                                    cyg.aj(cjvVar8);
                                    czzVar.getClass();
                                    cjvVar8.k.f(SystemClock.elapsedRealtime(), true, true);
                                    return;
                                }
                                return;
                            }
                        }
                    } else {
                        j3 = j;
                    }
                    cspVar2 = cspVar;
                    cjvVar2 = cjvVar;
                    str3 = "_ae";
                    bgmVar2 = bgmVar4;
                    if (bi.getLong("extend_session", j2) != 1) {
                    }
                    ArrayList arrayList32 = new ArrayList(bi.keySet());
                    Collections.sort(arrayList32);
                    size = arrayList32.size();
                    i = 0;
                    while (i < size) {
                    }
                    cjv cjvVar62 = cjvVar3;
                    i2 = 0;
                    while (i2 < arrayList2.size()) {
                    }
                    cjv cjvVar82 = cjvVar62;
                    cyg.aj(bcmVar);
                    if (bcmVar.u(false) == null) {
                        return;
                    } else {
                        return;
                    }
                }
            }
        } else {
            bgbVar = bgbVar2;
        }
        z4 = equals;
        if (cygVar.au()) {
        }
    }

    public final void ao(Boolean bool, boolean z) {
        _e();
        zza();
        cyg cygVar = (cyg) this.z;
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        bgmVar.o.i(bool, "Setting app measurement enabled (FE)");
        gmr gmrVar = cygVar.f13744b;
        cyg.ai(gmrVar);
        gmrVar._e();
        SharedPreferences.Editor edit = gmrVar.ar().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
        if (z) {
            gmr gmrVar2 = cygVar.f13744b;
            cyg.ai(gmrVar2);
            gmrVar2._e();
            SharedPreferences.Editor edit2 = gmrVar2.ar().edit();
            if (bool != null) {
                edit2.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit2.remove("measurement_enabled_from_api");
            }
            edit2.apply();
        }
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar._e();
        if (cygVar.i || !(bool == null || bool.booleanValue())) {
            al();
        }
    }

    public final void ap(Bundle bundle, int i, long j) {
        Object obj;
        String string;
        cyg cygVar = (cyg) this.z;
        zza();
        rs rsVar = rs.f19921a;
        gxx[] values = gxx.values();
        int length = values.length;
        int i2 = 0;
        while (true) {
            obj = null;
            if (i2 >= length) {
                break;
            }
            gxx gxxVar = values[i2];
            if (bundle.containsKey(gxxVar.zzd) && (string = bundle.getString(gxxVar.zzd)) != null) {
                if (string.equals("granted")) {
                    obj = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    obj = Boolean.FALSE;
                }
                if (obj == null) {
                    obj = string;
                    break;
                }
            }
            i2++;
        }
        if (obj != null) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.h.i(obj, "Ignoring invalid consent setting");
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.h.h("Valid consent values are 'granted', 'denied'");
        }
        as(rs.c(bundle), i, j);
    }

    public final void aq() {
        cyg cygVar = (cyg) this.z;
        if (!(cygVar.v.getApplicationContext() instanceof Application) || this.o == null) {
            return;
        }
        ((Application) cygVar.v.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.o);
    }

    public final void ar(rs rsVar) {
        _e();
        boolean z = (rsVar.g(gxx.ANALYTICS_STORAGE) && rsVar.g(gxx.AD_STORAGE)) || ((cyg) this.z).ao().w();
        cyg cygVar = (cyg) this.z;
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar._e();
        if (z != cygVar.i) {
            cyg cygVar2 = (cyg) this.z;
            fth fthVar2 = cygVar2.j;
            cyg.ak(fthVar2);
            fthVar2._e();
            cygVar2.i = z;
            gmr gmrVar = ((cyg) this.z).f13744b;
            cyg.ai(gmrVar);
            gmrVar._e();
            Boolean valueOf = gmrVar.ar().contains("measurement_enabled_from_api") ? Boolean.valueOf(gmrVar.ar().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z || valueOf == null || valueOf.booleanValue()) {
                ao(Boolean.valueOf(z), false);
            }
        }
    }

    public final void as(rs rsVar, int i, long j) {
        rs rsVar2;
        boolean z;
        boolean z2;
        boolean z3;
        rs rsVar3;
        zza();
        if (i != -10 && ((Boolean) rsVar.f19922b.get(gxx.AD_STORAGE)) == null && ((Boolean) rsVar.f19922b.get(gxx.ANALYTICS_STORAGE)) == null) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.h.h("Discarding empty consent settings");
            return;
        }
        synchronized (this.q) {
            try {
                rsVar2 = this.l;
                int i2 = this.n;
                rs rsVar4 = rs.f19921a;
                boolean z4 = false;
                if (i <= i2) {
                    z = rsVar.i(rsVar2, (gxx[]) rsVar.f19922b.keySet().toArray(new gxx[0]));
                    gxx gxxVar = gxx.ANALYTICS_STORAGE;
                    z2 = true;
                    if (rsVar.g(gxxVar) && !this.l.g(gxxVar)) {
                        z4 = true;
                    }
                    rsVar = rsVar.e(this.l);
                    this.l = rsVar;
                    this.n = i;
                    z3 = z4;
                } else {
                    z = false;
                    z2 = false;
                    z3 = false;
                }
                rsVar3 = rsVar;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z2) {
            bgm bgmVar2 = ((cyg) this.z).z;
            cyg.ak(bgmVar2);
            bgmVar2.p.i(rsVar3, "Ignoring lower-priority consent settings, proposed settings");
            return;
        }
        long andIncrement = this.m.getAndIncrement();
        if (z) {
            this.f13446g.set(null);
            fth fthVar = ((cyg) this.z).j;
            cyg.ak(fthVar);
            fthVar.o(new dlh(this, rsVar3, j, i, andIncrement, z3, rsVar2));
            return;
        }
        fyp fypVar = new fyp(this, rsVar3, i, andIncrement, z3, rsVar2);
        if (i == 30 || i == -10) {
            fth fthVar2 = ((cyg) this.z).j;
            cyg.ak(fthVar2);
            fthVar2.o(fypVar);
        } else {
            fth fthVar3 = ((cyg) this.z).j;
            cyg.ak(fthVar3);
            fthVar3.p(fypVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x00f6, code lost:
    
        if (r7 > 100) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x012b, code lost:
    
        if (r8 > 100) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void at(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        String str3 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (str2 != "screen_view" && (str2 == null || !str2.equals("screen_view"))) {
            boolean z3 = !z2 || this.p == null || dkq.al(str2);
            Bundle bundle3 = new Bundle(bundle2);
            for (String str4 : bundle3.keySet()) {
                Object obj = bundle3.get(str4);
                if (obj instanceof Bundle) {
                    bundle3.putBundle(str4, new Bundle((Bundle) obj));
                } else if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    for (int i = 0; i < parcelableArr.length; i++) {
                        Parcelable parcelable = parcelableArr[i];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelable);
                        }
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                    }
                }
            }
            fth fthVar = ((cyg) this.z).j;
            cyg.ak(fthVar);
            fthVar.p(new gau(this, str3, str2, j, bundle3, z2, z3, z));
            return;
        }
        bcm bcmVar = ((cyg) this.z).h;
        cyg.aj(bcmVar);
        synchronized (bcmVar.p) {
            try {
                if (!bcmVar.k) {
                    bgm bgmVar = ((cyg) bcmVar.z).z;
                    cyg.ak(bgmVar);
                    bgmVar.h.h("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String string = bundle2.getString("screen_name");
                if (string != null) {
                    if (string.length() > 0) {
                        int length = string.length();
                        ((cyg) bcmVar.z).getClass();
                    }
                    bgm bgmVar2 = ((cyg) bcmVar.z).z;
                    cyg.ak(bgmVar2);
                    bgmVar2.h.i(Integer.valueOf(string.length()), "Invalid screen name length for screen view. Length");
                    return;
                }
                String string2 = bundle2.getString("screen_class");
                if (string2 != null) {
                    if (string2.length() > 0) {
                        int length2 = string2.length();
                        ((cyg) bcmVar.z).getClass();
                    }
                    bgm bgmVar3 = ((cyg) bcmVar.z).z;
                    cyg.ak(bgmVar3);
                    bgmVar3.h.i(Integer.valueOf(string2.length()), "Invalid screen class length for screen view. Length");
                    return;
                }
                if (string2 == null) {
                    Activity activity = bcmVar.f11282g;
                    string2 = activity != null ? bcmVar.v(activity.getClass()) : "Activity";
                }
                ein einVar = bcmVar.m;
                if (bcmVar.o && einVar != null) {
                    bcmVar.o = false;
                    boolean cg = ffb.cg(einVar.f15599e, string2);
                    boolean cg2 = ffb.cg(einVar.f15597c, string);
                    if (cg && cg2) {
                        bgm bgmVar4 = ((cyg) bcmVar.z).z;
                        cyg.ak(bgmVar4);
                        bgmVar4.h.h("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                bgm bgmVar5 = ((cyg) bcmVar.z).z;
                cyg.ak(bgmVar5);
                bgmVar5.f11519c.e(string == null ? "null" : string, "Logging screen view with name, class", string2 == null ? "null" : string2);
                ein einVar2 = bcmVar.m == null ? bcmVar.n : bcmVar.m;
                dkq dkqVar = ((cyg) bcmVar.z).m;
                cyg.ai(dkqVar);
                ein einVar3 = new ein(true, dkqVar.by(), j, string, string2);
                bcmVar.m = einVar3;
                bcmVar.n = einVar2;
                bcmVar.j = einVar3;
                ((cyg) bcmVar.z).f13743ab.getClass();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                fth fthVar2 = ((cyg) bcmVar.z).j;
                cyg.ak(fthVar2);
                fthVar2.p(new sc(bcmVar, bundle2, einVar3, einVar2, elapsedRealtime, 3));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void au(String str, String str2, Bundle bundle) {
        _e();
        ((cyg) this.z).f13743ab.getClass();
        ba(System.currentTimeMillis(), bundle, str, str2);
    }

    public final void av(Bundle bundle, long j) {
        cyg cygVar = (cyg) this.z;
        ckd.k(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString(PluginConstants.KEY_APP_ID))) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.h("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove(PluginConstants.KEY_APP_ID);
        dyd.ah(bundle2, PluginConstants.KEY_APP_ID, String.class, null);
        dyd.ah(bundle2, LiveConfigKey.ORIGIN, String.class, null);
        dyd.ah(bundle2, abn.EXTRA_UA_APP_NAME, String.class, null);
        dyd.ah(bundle2, "value", Object.class, null);
        dyd.ah(bundle2, "trigger_event_name", String.class, null);
        dyd.ah(bundle2, "trigger_timeout", Long.class, 0L);
        dyd.ah(bundle2, "timed_out_event_name", String.class, null);
        dyd.ah(bundle2, "timed_out_event_params", Bundle.class, null);
        dyd.ah(bundle2, "triggered_event_name", String.class, null);
        dyd.ah(bundle2, "triggered_event_params", Bundle.class, null);
        dyd.ah(bundle2, "time_to_live", Long.class, 0L);
        dyd.ah(bundle2, "expired_event_name", String.class, null);
        dyd.ah(bundle2, "expired_event_params", Bundle.class, null);
        ckd.bf(bundle2.getString(abn.EXTRA_UA_APP_NAME));
        ckd.bf(bundle2.getString(LiveConfigKey.ORIGIN));
        ckd.k(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString(abn.EXTRA_UA_APP_NAME);
        Object obj = bundle2.get("value");
        dkq dkqVar = cygVar.m;
        dkq dkqVar2 = cygVar.m;
        ebl eblVar = cygVar.af;
        bgm bgmVar2 = cygVar.z;
        cyg.ai(dkqVar);
        if (dkqVar.bp(string) != 0) {
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.i(eblVar.i(string), "Invalid conditional user property name");
            return;
        }
        cyg.ai(dkqVar2);
        if (dkqVar2.bw(obj, string) != 0) {
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(eblVar.i(string), "Invalid conditional user property value", obj);
            return;
        }
        cyg.ai(dkqVar2);
        Object bj = dkqVar2.bj(obj, string);
        if (bj == null) {
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(eblVar.i(string), "Unable to normalize conditional user property value", obj);
            return;
        }
        dyd.bf(bj, bundle2);
        long j2 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name")) && (j2 > 15552000000L || j2 < 1)) {
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(eblVar.i(string), "Invalid conditional user property timeout", Long.valueOf(j2));
            return;
        }
        long j3 = bundle2.getLong("time_to_live");
        if (j3 > 15552000000L || j3 < 1) {
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.e(eblVar.i(string), "Invalid conditional user property time to live", Long.valueOf(j3));
        } else {
            fth fthVar = cygVar.j;
            cyg.ak(fthVar);
            fthVar.p(new aiy(this, bundle2, 1));
        }
    }

    public final void aw(String str, String str2, Bundle bundle) {
        cyg cygVar = (cyg) this.z;
        cygVar.f13743ab.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        ckd.bf(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString(abn.EXTRA_UA_APP_NAME, str);
        bundle2.putLong("creation_timestamp", currentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar.p(new aiy(this, bundle2, 2));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ax(String str, long j, Object obj, String str2) {
        Object obj2;
        String str3;
        boolean l;
        Object obj3 = obj;
        cyg cygVar = (cyg) this.z;
        ckd.bf(str);
        ckd.bf(str2);
        _e();
        zza();
        if ("allow_personalized_ads".equals(str2)) {
            if (obj3 instanceof String) {
                String str4 = (String) obj3;
                if (!TextUtils.isEmpty(str4)) {
                    long j2 = true != "false".equals(str4.toLowerCase(Locale.ENGLISH)) ? 0L : 1L;
                    obj3 = Long.valueOf(j2);
                    gmr gmrVar = cygVar.f13744b;
                    cyg.ai(gmrVar);
                    gmrVar.al.l(j2 == 1 ? "true" : "false");
                    obj2 = obj3;
                    str3 = "_npa";
                    if (!cygVar.as()) {
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11519c.h("User property not set since app measurement is disabled");
                        return;
                    }
                    if (cygVar.au()) {
                        cmd cmdVar = new cmd(str3, j, obj2, str);
                        dbb ao = cygVar.ao();
                        ao._e();
                        cyg cygVar2 = (cyg) ao.z;
                        ao.zza();
                        cygVar2.getClass();
                        efm an = cygVar2.an();
                        an.getClass();
                        Parcel obtain = Parcel.obtain();
                        cqu.b(cmdVar, obtain);
                        byte[] marshall = obtain.marshall();
                        obtain.recycle();
                        if (marshall.length > 131072) {
                            bgm bgmVar2 = ((cyg) an.z).z;
                            cyg.ak(bgmVar2);
                            bgmVar2.f11517a.h("User property too long for local database. Sending directly to service");
                            l = false;
                        } else {
                            l = an.l(1, marshall);
                        }
                        ao.s(new edg(ao, ao.q(true), l, cmdVar, 0));
                        return;
                    }
                    return;
                }
            }
            if (obj3 == null) {
                gmr gmrVar2 = cygVar.f13744b;
                cyg.ai(gmrVar2);
                gmrVar2.al.l("unset");
                obj2 = obj3;
                str3 = "_npa";
                if (!cygVar.as()) {
                }
            }
        }
        obj2 = obj3;
        str3 = str2;
        if (!cygVar.as()) {
        }
    }

    public final String ay() {
        return (String) this.f13446g.get();
    }

    public final void az(String str, String str2, Object obj, boolean z, long j) {
        int i;
        int length;
        cyg cygVar = (cyg) this.z;
        String str3 = str == null ? "app" : str;
        if (z) {
            dkq dkqVar = cygVar.m;
            cyg.ai(dkqVar);
            i = dkqVar.bp(str2);
        } else {
            dkq dkqVar2 = cygVar.m;
            cyg.ai(dkqVar2);
            if (dkqVar2.ba("user property", str2)) {
                if (dkqVar2.bn("user property", byh.l, null, str2)) {
                    ((cyg) dkqVar2.z).getClass();
                    if (dkqVar2.aw(24, "user property", str2)) {
                        i = 0;
                    }
                } else {
                    i = 15;
                }
            }
            i = 6;
        }
        bgb bgbVar = this.s;
        if (i != 0) {
            cyg.ai(cygVar.m);
            String s = dkq.s(24, str2, true);
            length = str2 != null ? str2.length() : 0;
            cyg.ai(cygVar.m);
            dkq.v(bgbVar, null, i, "_ev", s, length);
            return;
        }
        if (obj == null) {
            fth fthVar = cygVar.j;
            cyg.ak(fthVar);
            fthVar.p(new sc(this, str3, str2, null, j, 2));
            return;
        }
        dkq dkqVar3 = cygVar.m;
        dkq dkqVar4 = cygVar.m;
        cyg.ai(dkqVar3);
        int bw = dkqVar3.bw(obj, str2);
        if (bw != 0) {
            cyg.ai(dkqVar4);
            String s2 = dkq.s(24, str2, true);
            length = ((obj instanceof String) || (obj instanceof CharSequence)) ? obj.toString().length() : 0;
            cyg.ai(dkqVar4);
            dkq.v(bgbVar, null, bw, "_ev", s2, length);
            return;
        }
        cyg.ai(dkqVar4);
        Object bj = dkqVar4.bj(obj, str2);
        if (bj != null) {
            fth fthVar2 = cygVar.j;
            cyg.ak(fthVar2);
            fthVar2.p(new sc(this, str3, str2, bj, j, 2));
        }
    }

    @Override // g.os
    public final boolean b() {
        return false;
    }

    public final void ba(long j, Bundle bundle, String str, String str2) {
        _e();
        an(str, str2, j, bundle, true, this.p == null || dkq.al(str2), true);
    }

    public final void x(long j, boolean z) {
        _e();
        zza();
        cyg cygVar = (cyg) this.z;
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        bgmVar.o.h("Resetting analytics data (FE)");
        cjv cjvVar = cygVar.n;
        cyg.aj(cjvVar);
        cjvVar._e();
        fcw fcwVar = cjvVar.k;
        ((rd) fcwVar.f16580a).i();
        fcwVar.f16582d = 0L;
        fcwVar.f16583e = 0L;
        eur.c();
        dsd dsdVar = cygVar.f13747e;
        if (dsdVar.g(null, gad.az)) {
            cygVar.at().w();
        }
        boolean as = cygVar.as();
        gmr gmrVar = cygVar.f13744b;
        cyg.ai(gmrVar);
        cyg cygVar2 = (cyg) gmrVar.z;
        gmrVar.ap.g(j);
        gmr gmrVar2 = cygVar2.f13744b;
        dsd dsdVar2 = cygVar2.f13747e;
        cyg.ai(gmrVar2);
        if (!TextUtils.isEmpty(gmrVar2.f18414g.i())) {
            gmrVar.f18414g.l(null);
        }
        blm blmVar = blm.f11789a;
        ((dkg) blmVar.f11790b.zza()).getClass();
        tw twVar = gad.j;
        if (dsdVar2.g(null, twVar)) {
            gmrVar.k.g(0L);
        }
        if (!dsdVar2.m()) {
            gmrVar.at(!as);
        }
        gmrVar.p.l(null);
        gmrVar.j.g(0L);
        gmrVar.w.r(null);
        if (z) {
            dbb ao = cygVar.ao();
            ao._e();
            cyg cygVar3 = (cyg) ao.z;
            ao.zza();
            afh q = ao.q(false);
            cygVar3.getClass();
            cygVar3.an().j();
            ao.s(new bqs(ao, q, 0));
        }
        ((dkg) blmVar.f11790b.zza()).getClass();
        if (dsdVar.g(null, twVar)) {
            cyg.aj(cjvVar);
            cjvVar.j.zza();
        }
        this.h = !as;
    }
}
