package g;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.os.RemoteException;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.google.android.gms.internal.ads.zzakd;
import com.google.android.gms.internal.ads.zzasf;
import com.google.android.gms.internal.ads.zzata;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzbze;
import com.google.android.gms.internal.ads.zzbzl;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcid;
import com.google.android.gms.internal.ads.zzcpd;
import com.google.android.gms.internal.ads.zzcqw;
import com.google.android.gms.internal.ads.zzcqx;
import com.google.android.gms.internal.ads.zzcqy;
import com.google.android.gms.internal.ads.zzcqz;
import com.google.android.gms.internal.ads.zzcr;
import com.google.android.gms.internal.ads.zzcra;
import com.google.android.gms.internal.ads.zzcrb;
import com.google.android.gms.internal.ads.zzcsg;
import com.google.android.gms.internal.ads.zzcsh;
import com.google.android.gms.internal.ads.zzcsi;
import com.google.android.gms.internal.ads.zzcsj;
import com.google.android.gms.internal.ads.zzcsk;
import com.google.android.gms.internal.ads.zzcua;
import com.google.android.gms.internal.ads.zzcwg;
import com.google.android.gms.internal.ads.zzcxm;
import com.google.android.gms.internal.ads.zzcxz;
import com.google.android.gms.internal.ads.zzcyd;
import com.google.android.gms.internal.ads.zzdax;
import com.google.android.gms.internal.ads.zzdeb;
import com.google.android.gms.internal.ads.zzekz;
import com.google.android.gms.internal.ads.zzele;
import com.google.android.gms.internal.ads.zzezu;
import com.google.android.gms.internal.ads.zzfas;
import com.google.android.gms.internal.ads.zzfau;
import com.google.android.gms.internal.ads.zzfaz;
import com.google.android.gms.internal.ads.zzfba;
import com.google.android.gms.internal.ads.zzfcm;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfff;
import com.google.android.gms.internal.ads.zzffq;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzfqw;
import com.google.android.gms.internal.ads.zzfqx;
import com.google.android.gms.internal.ads.zzfrb;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzhfw;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhfy;
import com.google.android.gms.internal.ads.zzhgf;
import com.google.android.gms.internal.ads.zzhgg;
import com.google.android.gms.internal.ads.zzhgk;
import com.google.android.gms.internal.ads.zzhgl;
import j$.util.Objects;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class fzn implements bol, dds, zzgee, zzakd, zzezu, zzcqx, bmo, bjb, lb {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f17726a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile fzn f17727b;

    /* renamed from: c, reason: collision with root package name */
    public static fzn f17728c;

    /* renamed from: d, reason: collision with root package name */
    public Object f17729d;

    /* renamed from: e, reason: collision with root package name */
    public Object f17730e;

    /* renamed from: f, reason: collision with root package name */
    public Object f17731f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f17732g;
    public Object h;
    public Object i;

    public fzn(int i) {
        this.f17732g = i;
        switch (i) {
            case 7:
                this.i = new LinkedHashMap();
                this.f17729d = "GET";
                this.f17730e = new ais(0);
                break;
            case 8:
            default:
                this.h = new HashMap();
                this.f17729d = new HashMap();
                this.f17730e = new HashMap();
                this.f17731f = new HashMap();
                this.i = new HashMap();
                break;
            case 9:
                this.h = new HashMap();
                this.f17729d = new HashMap();
                new CopyOnWriteArrayList();
                this.f17730e = new CopyOnWriteArrayList();
                new CopyOnWriteArrayList();
                this.f17731f = new CopyOnWriteArrayList();
                this.i = null;
                break;
        }
    }

    public /* synthetic */ fzn(int i, boolean z) {
        this.f17732g = i;
    }

    public fzn(Context context) {
        this.f17732g = 1;
        this.f17730e = new HashMap();
        this.f17731f = new HashMap();
        this.h = new ArrayList();
        this.f17729d = context;
        this.i = new eqi(this, context.getMainLooper(), 3);
    }

    public fzn(Context context, gkr gkrVar) {
        this.f17732g = 8;
        Context applicationContext = context.getApplicationContext();
        bff.e(applicationContext, "context.applicationContext");
        euw euwVar = new euw(applicationContext, gkrVar, 0);
        Context applicationContext2 = context.getApplicationContext();
        bff.e(applicationContext2, "context.applicationContext");
        euw euwVar2 = new euw(applicationContext2, gkrVar, 1);
        Context applicationContext3 = context.getApplicationContext();
        bff.e(applicationContext3, "context.applicationContext");
        String str = djv.f14292a;
        Object wkVar = Build.VERSION.SDK_INT >= 24 ? new wk(applicationContext3, gkrVar) : new fsi(applicationContext3, gkrVar);
        Context applicationContext4 = context.getApplicationContext();
        bff.e(applicationContext4, "context.applicationContext");
        euw euwVar3 = new euw(applicationContext4, gkrVar, 2);
        this.h = context;
        this.f17729d = euwVar;
        this.f17730e = euwVar2;
        this.f17731f = wkVar;
        this.i = euwVar3;
    }

    public fzn(Context context, String str, String str2) {
        this.f17732g = 16;
        this.f17729d = str;
        this.f17730e = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.i = handlerThread;
        handlerThread.start();
        zzfqw zzfqwVar = new zzfqw(context, handlerThread.getLooper(), this, this, 9200000);
        this.h = zzfqwVar;
        this.f17731f = new LinkedBlockingQueue();
        zzfqwVar.checkAvailabilityAndConnect();
    }

    public fzn(aem aemVar, HashMap hashMap, HashMap hashMap2, HashMap hashMap3) {
        this.f17732g = 12;
        this.h = aemVar;
        this.f17731f = hashMap2;
        this.i = hashMap3;
        this.f17730e = Collections.unmodifiableMap(hashMap);
        TreeSet treeSet = new TreeSet();
        int i = 0;
        aemVar.w(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = ((Long) it.next()).longValue();
            i++;
        }
        this.f17729d = jArr;
    }

    public /* synthetic */ fzn(bxr bxrVar, Context context, String str) {
        this.f17732g = 13;
        zzhfx zza = zzhfy.zza(context);
        this.h = zza;
        zzhfx zza2 = zzhfy.zza(str);
        this.f17729d = zza2;
        zzfcm zzfcmVar = new zzfcm(zza, bxrVar.cr, bxrVar.aq);
        zzhgg zzc = zzhfw.zzc(new zzfas(bxrVar.cr));
        this.f17730e = zzc;
        zzhgg zzhggVar = bxrVar.z;
        zzhfx zzhfxVar = bxrVar.ak;
        zzffq zza3 = zzffq.zza();
        zzcid zzcidVar = bxrVar.f12396ab;
        zzhgg zzc2 = zzhfw.zzc(new zzfau(zza, zzhggVar, zzhfxVar, zzfcmVar, zzc, zza3, zzcidVar));
        this.f17731f = zzc2;
        this.i = zzhfw.zzc(new zzfba(zzhfxVar, zza, zza2, zzc2, zzc, zzcidVar, bxrVar.k));
    }

    public /* synthetic */ fzn(bxr bxrVar, dku dkuVar, zzcsg zzcsgVar, zzcqy zzcqyVar) {
        this.f17732g = 14;
        zzcsk zzcskVar = new zzcsk(zzcsgVar);
        zzcsh zzcshVar = new zzcsh(zzcsgVar);
        zzhgk zza = zzhgl.zza(0, 2);
        zza.zza(dkuVar.bv);
        zza.zza(dkuVar.di);
        zzhgg zzc = zzhfw.zzc(new zzcxm(zza.zzc()));
        this.h = zzc;
        zzhgk zza2 = zzhgl.zza(4, 4);
        zza2.zzb(dkuVar.o);
        zza2.zza(dkuVar.bx);
        zza2.zzb(dkuVar.bk);
        zza2.zzb(dkuVar.bz);
        zza2.zza(dkuVar.f14331ab);
        zza2.zza(dkuVar.db);
        zza2.zza(dkuVar.j);
        zza2.zzb(dkuVar.ao);
        zzhgg zzc2 = zzhfw.zzc(new zzcxz(zza2.zzc()));
        this.f17729d = zzc2;
        zzcwg zzcwgVar = new zzcwg(zzcshVar, new zzcsi(zzcsgVar), dkuVar.dj, new zzcsj(zzcsgVar), dkuVar.bj);
        zzhgg zzc3 = zzhfw.zzc(zzdax.zza());
        this.f17730e = zzc3;
        zzhgk zza3 = zzhgl.zza(1, 1);
        zza3.zza(dkuVar.cr);
        zza3.zzb(dkuVar.cb);
        zzcyd zzcydVar = new zzcyd(zza3.zzc());
        zzhgk zza4 = zzhgl.zza(0, 1);
        zza4.zza(dkuVar.s);
        zzhgg zzc4 = zzhfw.zzc(new zzdeb(zza4.zzc()));
        this.f17731f = zzc4;
        this.i = zzhfw.zzc(new zzcrb(new zzcua(zzcskVar, zzcshVar, zzc, zzc2, dkuVar.bc, zzcwgVar, zzc3, zzcydVar, zzc4), new zzcra(zzcqyVar), new zzcqz(zzcqyVar), bxrVar.z));
    }

    public fzn(cci cciVar, ArrayList arrayList) {
        this.f17732g = 5;
        this.f17730e = new ArrayList();
        this.f17729d = cciVar;
        this.h = arrayList;
    }

    public /* synthetic */ fzn(Object obj, dcy dcyVar, Object obj2, Object obj3, Object obj4, int i) {
        this.f17732g = i;
        this.h = dcyVar;
        this.f17729d = obj2;
        this.f17730e = obj3;
        this.f17731f = obj4;
        this.i = obj;
    }

    public /* synthetic */ fzn(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.f17732g = i;
        this.h = obj;
        this.f17729d = obj2;
        this.f17730e = obj3;
        this.f17731f = obj4;
        this.i = obj5;
    }

    public /* synthetic */ fzn(boolean z) {
        this.f17732g = 7;
    }

    private final void aa() {
    }

    public static fzn j() {
        if (f17727b == null) {
            synchronized (fzn.class) {
                try {
                    if (f17727b == null) {
                        f17727b = new fzn(0, false);
                    }
                } finally {
                }
            }
        }
        return f17727b;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void k(fzn fznVar, ctg ctgVar) {
        cbf cbfVar;
        ctx ctxVar = (ctx) fznVar.h;
        if (ctgVar == null) {
            try {
                InputStream open = ctxVar.getAssets().open(ctxVar.getString(R.string.alliance_response_local_file_name));
                byte[] bArr = new byte[open.available()];
                open.read(bArr);
                open.close();
                String str = new String(bArr, StandardCharsets.UTF_8);
                fsv fsvVar = new fsv(3);
                TimeZone timeZone = ex.f16310d;
                cbfVar = (cbf) ex.h(str, (Type) fsvVar.z, mh.f19642a, ex.f16307a, new cbj[0]);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (cbfVar != null) {
                ctgVar = (ctg) cbfVar.getData();
                if (ctgVar == null) {
                    fzk fzkVar = (fzk) fznVar.f17730e;
                    fzkVar.l.getString(R.string.alliance_failed);
                    fzkVar.k.setVisibility(8);
                    fzkVar.p(8);
                    fzkVar.f17708a.setVisibility(8);
                    return;
                }
            }
            ctgVar = null;
            if (ctgVar == null) {
            }
        }
        ArrayList arrayList = new ArrayList();
        for (fwx fwxVar : ctgVar.getAllianceArray()) {
            if (fwxVar != null && !ctxVar.getPackageName().equals(fwxVar.getPackageName())) {
                arrayList.add(fwxVar);
            }
        }
        ctgVar.setAllianceArray(acw.u(arrayList) ? null : (fwx[]) arrayList.toArray(new fwx[0]));
        fznVar.f17731f = ctgVar;
        fznVar.r();
    }

    public static fzn l(Context context) {
        fzn fznVar;
        synchronized (f17726a) {
            try {
                if (f17728c == null) {
                    f17728c = new fzn(context.getApplicationContext());
                }
                fznVar = f17728c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fznVar;
    }

    public static zzata m() {
        zzasf zza = zzata.zza();
        zza.zzD(32768L);
        return (zzata) zza.zzbr();
    }

    @Override // g.dds
    public void ai() {
        fyt.c((Activity) this.h, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, new fcd[]{new fhf(2, this)});
    }

    @Override // g.fcc
    public Object get() {
        return new fyn((Executor) ((fcc) this.h).get(), (cuc) ((fcc) this.f17729d).get(), (ahe) ((fpd) this.f17730e).get(), (ahy) ((fcc) this.f17731f).get(), (ddc) ((fcc) this.i).get());
    }

    public void n(String str, String str2) {
        bff.p(str2, "value");
        ais aisVar = (ais) this.f17730e;
        aisVar.getClass();
        dyd.bn(str);
        dyd.al(str2, str);
        aisVar.b(str);
        aisVar.h(str, str2);
    }

    public ayu o(ayu ayuVar) {
        synchronized (((HashMap) this.f17730e)) {
            try {
                ayu ayuVar2 = (ayu) ((HashMap) this.f17730e).get(ayuVar);
                if (ayuVar2 != null) {
                    return ayuVar2;
                }
                ((HashMap) this.f17730e).put(ayuVar, ayuVar);
                return ayuVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.bjb
    public void onConnected(Bundle bundle) {
        zzfrb zzfrbVar;
        LinkedBlockingQueue linkedBlockingQueue = (LinkedBlockingQueue) this.f17731f;
        HandlerThread handlerThread = (HandlerThread) this.i;
        try {
            zzfrbVar = ((zzfqw) this.h).zzp();
        } catch (DeadObjectException | IllegalStateException unused) {
            zzfrbVar = null;
        }
        if (zzfrbVar != null) {
            try {
                try {
                    linkedBlockingQueue.put(zzfrbVar.zze(new zzfqx((String) this.f17729d, (String) this.f17730e)).zza());
                } catch (Throwable unused2) {
                    linkedBlockingQueue.put(m());
                }
            } catch (InterruptedException unused3) {
            } catch (Throwable th) {
                zzc();
                handlerThread.quit();
                throw th;
            }
            zzc();
            handlerThread.quit();
        }
    }

    @Override // g.lb
    public void onConnectionFailed(nk nkVar) {
        try {
            ((LinkedBlockingQueue) this.f17731f).put(m());
        } catch (InterruptedException unused) {
        }
    }

    @Override // g.bjb
    public void onConnectionSuspended(int i) {
        try {
            ((LinkedBlockingQueue) this.f17731f).put(m());
        } catch (InterruptedException unused) {
        }
    }

    public void p(Class cls, Object obj) {
        bff.p(cls, "type");
        if (obj == null) {
            ((LinkedHashMap) this.i).remove(cls);
            return;
        }
        if (((LinkedHashMap) this.i).isEmpty()) {
            this.i = new LinkedHashMap();
        }
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.i;
        Object cast = cls.cast(obj);
        bff.d(cast);
        linkedHashMap.put(cls, cast);
    }

    public void q(Intent intent) {
        int match;
        synchronized (((HashMap) this.f17730e)) {
            try {
                String action = intent.getAction();
                String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(((Context) this.f17729d).getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z = (intent.getFlags() & 8) != 0;
                if (z) {
                    intent.toString();
                }
                ArrayList arrayList = (ArrayList) ((HashMap) this.f17731f).get(intent.getAction());
                if (arrayList != null) {
                    if (z) {
                        arrayList.toString();
                    }
                    ArrayList arrayList2 = null;
                    for (int i = 0; i < arrayList.size(); i++) {
                        dhg dhgVar = (dhg) arrayList.get(i);
                        if (z) {
                            Objects.toString(dhgVar.f14170b);
                        }
                        if (!dhgVar.f14172d && (match = dhgVar.f14170b.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager")) >= 0) {
                            if (z) {
                                Integer.toHexString(match);
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(dhgVar);
                            dhgVar.f14172d = true;
                        }
                    }
                    if (arrayList2 != null) {
                        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                            ((dhg) arrayList2.get(i2)).f14172d = false;
                        }
                        ((ArrayList) this.h).add(new fdy(intent, 12, arrayList2));
                        if (!((eqi) this.i).hasMessages(1)) {
                            ((eqi) this.i).sendEmptyMessage(1);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void r() {
        ctg ctgVar = (ctg) this.f17731f;
        if (ctgVar != null) {
            fwx[] allianceArray = ctgVar.getAllianceArray();
            if (acw.n(allianceArray)) {
                return;
            }
            for (fwx fwxVar : allianceArray) {
                if (fwxVar != null && !TextUtils.isEmpty(fwxVar.getPackageName())) {
                    fwxVar.setStatus(0);
                    PackageManager packageManager = (PackageManager) this.f17729d;
                    if (packageManager != null) {
                        try {
                            fwxVar.setStatus(packageManager.getPackageInfo(fwxVar.getPackageName(), 0).versionCode < fwxVar.getVersionCode() ? 2 : 1);
                        } catch (PackageManager.NameNotFoundException unused) {
                        }
                    }
                }
            }
            fzk fzkVar = (fzk) this.f17730e;
            ctg ctgVar2 = (ctg) this.f17731f;
            ctx ctxVar = fzkVar.l;
            fzkVar.f17708a.setVisibility(8);
            fzkVar.k.setVisibility(0);
            fzkVar.p(0);
            if (TextUtils.isEmpty(ctgVar2.getHeader())) {
                fzkVar.p(8);
            } else {
                fzkVar.p(0);
                fzkVar.o.setText(ctgVar2.getHeader());
            }
            fwx[] allianceArray2 = ctgVar2.getAllianceArray();
            if ((allianceArray2 == null ? 0 : allianceArray2.length) <= fzkVar.f17710c) {
                TextView textView = fzkVar.m;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                fcz fczVar = fzkVar.f17713f;
                if (fczVar != null) {
                    fczVar.f16586b = Arrays.asList(ctgVar2.getAllianceArray());
                    fczVar.notifyDataSetChanged();
                    return;
                } else {
                    fcz fczVar2 = new fcz(ctxVar, Arrays.asList(ctgVar2.getAllianceArray()));
                    fzkVar.f17713f = fczVar2;
                    fzkVar.k.setAdapter(fczVar2);
                    return;
                }
            }
            TextView textView2 = fzkVar.m;
            if (textView2 != null) {
                textView2.setVisibility(0);
            }
            List subList = Arrays.asList(ctgVar2.getAllianceArray()).subList(0, fzkVar.f17710c);
            fcz fczVar3 = fzkVar.f17713f;
            if (fczVar3 != null) {
                fczVar3.f16586b = subList;
                fczVar3.notifyDataSetChanged();
            } else {
                fcz fczVar4 = new fcz(ctxVar, subList);
                fzkVar.f17713f = fczVar4;
                fzkVar.k.setAdapter(fczVar4);
            }
        }
    }

    public dsj s(dsj dsjVar) {
        synchronized (((HashMap) this.f17729d)) {
            try {
                dsj dsjVar2 = (dsj) ((HashMap) this.f17729d).get(dsjVar);
                if (dsjVar2 != null) {
                    return dsjVar2;
                }
                ((HashMap) this.f17729d).put(dsjVar, dsjVar);
                return dsjVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.dds
    public void t() {
        ((cxc) this.i).h(-2L);
    }

    public void u(BroadcastReceiver broadcastReceiver) {
        synchronized (((HashMap) this.f17730e)) {
            try {
                ArrayList arrayList = (ArrayList) ((HashMap) this.f17730e).remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    dhg dhgVar = (dhg) arrayList.get(size);
                    dhgVar.f14169a = true;
                    for (int i = 0; i < dhgVar.f14170b.countActions(); i++) {
                        String action = dhgVar.f14170b.getAction(i);
                        ArrayList arrayList2 = (ArrayList) ((HashMap) this.f17731f).get(action);
                        if (arrayList2 != null) {
                            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                dhg dhgVar2 = (dhg) arrayList2.get(size2);
                                if (dhgVar2.f14171c == broadcastReceiver) {
                                    dhgVar2.f14169a = true;
                                    arrayList2.remove(size2);
                                }
                            }
                            if (arrayList2.size() <= 0) {
                                ((HashMap) this.f17731f).remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void v(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (((HashMap) this.f17730e)) {
            try {
                dhg dhgVar = new dhg(broadcastReceiver, intentFilter);
                ArrayList arrayList = (ArrayList) ((HashMap) this.f17730e).get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    ((HashMap) this.f17730e).put(broadcastReceiver, arrayList);
                }
                arrayList.add(dhgVar);
                for (int i = 0; i < intentFilter.countActions(); i++) {
                    String action = intentFilter.getAction(i);
                    ArrayList arrayList2 = (ArrayList) ((HashMap) this.f17731f).get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        ((HashMap) this.f17731f).put(action, arrayList2);
                    }
                    arrayList2.add(dhgVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void w(String str, sz szVar) {
        bff.p(str, "method");
        if (str.length() <= 0) {
            throw new IllegalArgumentException("method.isEmpty() == true");
        }
        if (szVar == null) {
            if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT")) {
                throw new IllegalArgumentException(tn.ad("method ", str, " must have a request body.").toString());
            }
        } else if (!ckd.l(str)) {
            throw new IllegalArgumentException(tn.ad("method ", str, " must not have a request body.").toString());
        }
        this.f17729d = str;
        this.f17731f = szVar;
    }

    public daw x() {
        Map unmodifiableMap;
        eyn eynVar = (eyn) this.h;
        if (eynVar == null) {
            throw new IllegalStateException("url == null");
        }
        String str = (String) this.f17729d;
        dvq d2 = ((ais) this.f17730e).d();
        sz szVar = (sz) this.f17731f;
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.i;
        byte[] bArr = erq.f16043c;
        bff.p(linkedHashMap, "<this>");
        if (linkedHashMap.isEmpty()) {
            unmodifiableMap = dyq.f15095a;
        } else {
            unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
            bff.e(unmodifiableMap, "{\n    Collections.unmodi…(LinkedHashMap(this))\n  }");
        }
        return new daw(eynVar, str, d2, szVar, unmodifiableMap);
    }

    public void y(int i, ayu ayuVar) {
        synchronized (((HashMap) this.f17731f)) {
            ((HashMap) this.f17731f).put(Integer.valueOf(i), ayuVar);
        }
    }

    public void z(String str) {
        bff.p(str, abn.EXTRA_URL);
        if (dmc.bw(str, "ws:", true)) {
            String substring = str.substring(3);
            bff.e(substring, "this as java.lang.String).substring(startIndex)");
            str = "http:".concat(substring);
        } else if (dmc.bw(str, "wss:", true)) {
            String substring2 = str.substring(4);
            bff.e(substring2, "this as java.lang.String).substring(startIndex)");
            str = "https:".concat(substring2);
        }
        bff.p(str, "<this>");
        ke keVar = new ke(1);
        keVar.m(null, str);
        this.h = keVar.n();
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public int zza() {
        return ((long[]) this.f17729d).length;
    }

    @Override // com.google.android.gms.internal.ads.zzcqx
    /* renamed from: zza, reason: collision with other method in class */
    public zzcpd mo14zza() {
        zzcqw zzcqwVar = (zzcqw) ((zzhgg) this.i).zzb();
        zzhgf.zzb(zzcqwVar);
        return zzcqwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezu
    /* renamed from: zza, reason: collision with other method in class */
    public zzfaz mo15zza() {
        return (zzfaz) ((zzhgg) this.i).zzb();
    }

    @Override // g.bmo
    public void zza(View view) {
        ((zzcao) this.h).zzc(((zzekz) this.i).f7195a.zza((zzfff) this.f17729d, (zzfet) this.f17730e, view, (zzele) this.f17731f));
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        String message = th.getMessage();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhr)).booleanValue()) {
            ti.f20033a.f20034ab.zzv(th, "SignalGeneratorImpl.generateSignals");
        } else {
            ti.f20033a.f20034ab.zzw(th, "SignalGeneratorImpl.generateSignals");
        }
        zzfkl an = der.an((dcy) this.h, (zzbzl) this.f17729d);
        if (((Boolean) zzbeg.zze.zze()).booleanValue() && an != null) {
            zzfka zzfkaVar = (zzfka) this.f17731f;
            zzfkaVar.zzh(th);
            zzfkaVar.zzg(false);
            an.zza(zzfkaVar);
            an.zzh();
        }
        try {
            if (!"Unknown format is no longer supported.".equals(message)) {
                message = "Internal error. " + message;
            }
            ((zzbze) this.f17730e).zzb(message);
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public long zzb(int i) {
        return ((long[]) this.f17729d)[i];
    }

    @Override // g.bmo
    public void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        zzbze zzbzeVar = (zzbze) this.f17730e;
        zzfka zzfkaVar = (zzfka) this.f17731f;
        ggs ggsVar = (ggs) obj;
        zzfkl an = der.an((dcy) this.h, (zzbzl) this.f17729d);
        der derVar = (der) this.i;
        derVar.ac.set(true);
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhm)).booleanValue()) {
            try {
                zzbzeVar.zzb("QueryInfo generation has been disabled.");
            } catch (RemoteException e2) {
                agd.d("QueryInfo generation has been disabled.".concat(e2.toString()));
            }
            if (!((Boolean) zzbeg.zze.zze()).booleanValue() || an == null) {
                return;
            }
            zzfkaVar.zzc("QueryInfo generation has been disabled.");
            zzfkaVar.zzg(false);
            an.zza(zzfkaVar);
            an.zzh();
            return;
        }
        try {
            try {
                if (ggsVar == null) {
                    zzbzeVar.zzc(null, null, null);
                    zzfkaVar.zzg(true);
                    if (!((Boolean) zzbeg.zze.zze()).booleanValue() || an == null) {
                        return;
                    }
                    an.zza(zzfkaVar);
                    an.zzh();
                    return;
                }
                try {
                    if (TextUtils.isEmpty(new JSONObject(ggsVar.f18123e).optString("request_id", ""))) {
                        agd.b("The request ID is empty in request JSON.");
                        zzbzeVar.zzb("Internal error: request ID is empty in request JSON.");
                        zzfkaVar.zzc("Request ID empty");
                        zzfkaVar.zzg(false);
                        if (!((Boolean) zzbeg.zze.zze()).booleanValue() || an == null) {
                            return;
                        }
                        an.zza(zzfkaVar);
                        an.zzh();
                        return;
                    }
                    Bundle bundle = ggsVar.f18119a;
                    if (derVar.f14070f && bundle != null && bundle.getInt(derVar.y, -1) == -1) {
                        bundle.putInt(derVar.y, derVar.u.get());
                    }
                    if (derVar.k && bundle != null && TextUtils.isEmpty(bundle.getString(derVar.ai))) {
                        if (TextUtils.isEmpty(derVar.s)) {
                            derVar.s = ti.f20033a.z.at(derVar.ae, derVar.f14071g.afmaVersion);
                        }
                        bundle.putString(derVar.ai, derVar.s);
                    }
                    zzbzeVar.zzc(ggsVar.f18121c, ggsVar.f18123e, bundle);
                    zzfkaVar.zzg(true);
                    if (!((Boolean) zzbeg.zze.zze()).booleanValue() || an == null) {
                        return;
                    }
                    an.zza(zzfkaVar);
                    an.zzh();
                } catch (JSONException e3) {
                    agd.b("Failed to create JSON object from the request string.");
                    zzbzeVar.zzb("Internal error for request JSON: " + e3.toString());
                    zzfkaVar.zzh(e3);
                    zzfkaVar.zzg(false);
                    ti.f20033a.f20034ab.zzw(e3, "SignalGeneratorImpl.generateSignals.onSuccess");
                    if (!((Boolean) zzbeg.zze.zze()).booleanValue() || an == null) {
                        return;
                    }
                    an.zza(zzfkaVar);
                    an.zzh();
                }
            } catch (RemoteException e4) {
                zzfkaVar.zzh(e4);
                zzfkaVar.zzg(false);
                agd.f("", e4);
                ti.f20033a.f20034ab.zzw(e4, "SignalGeneratorImpl.generateSignals.onSuccess");
                if (!((Boolean) zzbeg.zze.zze()).booleanValue() || an == null) {
                    return;
                }
                an.zza(zzfkaVar);
                an.zzh();
            }
        } catch (Throwable th) {
            if (((Boolean) zzbeg.zze.zze()).booleanValue() && an != null) {
                an.zza(zzfkaVar);
                an.zzh();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public List zzc(long j) {
        Map map = (Map) this.f17730e;
        HashMap hashMap = (HashMap) this.f17731f;
        HashMap hashMap2 = (HashMap) this.i;
        aem aemVar = (aem) this.h;
        ArrayList arrayList = new ArrayList();
        aemVar.q(j, aemVar.f10098a, arrayList);
        TreeMap treeMap = new TreeMap();
        aemVar.v(j, false, aemVar.f10098a, treeMap);
        aemVar.u(j, map, hashMap, aemVar.f10098a, treeMap);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) arrayList.get(i);
            String str = (String) hashMap2.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                asr asrVar = (asr) hashMap.get(pair.first);
                asrVar.getClass();
                zzcr zzcrVar = new zzcr();
                zzcrVar.zzc(decodeByteArray);
                zzcrVar.zzh(asrVar.f10765g);
                zzcrVar.zzi(0);
                zzcrVar.zze(asrVar.i, 0);
                zzcrVar.zzf(asrVar.f10761c);
                zzcrVar.zzk(asrVar.f10763e);
                zzcrVar.zzd(asrVar.j);
                zzcrVar.zzo(asrVar.h);
                arrayList2.add(zzcrVar.zzp());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            asr asrVar2 = (asr) hashMap.get(entry.getKey());
            asrVar2.getClass();
            zzcr zzcrVar2 = (zzcr) entry.getValue();
            CharSequence zzq = zzcrVar2.zzq();
            zzq.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzq;
            for (djq djqVar : (djq[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), djq.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(djqVar), spannableStringBuilder.getSpanEnd(djqVar), (CharSequence) "");
            }
            int i2 = 0;
            while (i2 < spannableStringBuilder.length()) {
                int i3 = i2 + 1;
                if (spannableStringBuilder.charAt(i2) == ' ') {
                    int i4 = i3;
                    while (i4 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i4) == ' ') {
                        i4++;
                    }
                    int i5 = i4 - i3;
                    if (i5 > 0) {
                        spannableStringBuilder.delete(i2, i5 + i2);
                    }
                }
                i2 = i3;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            int i6 = 0;
            while (i6 < spannableStringBuilder.length() - 1) {
                int i7 = i6 + 1;
                if (spannableStringBuilder.charAt(i6) == '\n' && spannableStringBuilder.charAt(i7) == ' ') {
                    spannableStringBuilder.delete(i7, i6 + 2);
                }
                i6 = i7;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            int i8 = 0;
            while (i8 < spannableStringBuilder.length() - 1) {
                int i9 = i8 + 1;
                if (spannableStringBuilder.charAt(i8) == ' ' && spannableStringBuilder.charAt(i9) == '\n') {
                    spannableStringBuilder.delete(i8, i9);
                }
                i8 = i9;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            zzcrVar2.zze(asrVar2.i, asrVar2.f10760b);
            zzcrVar2.zzf(asrVar2.f10761c);
            zzcrVar2.zzh(asrVar2.f10765g);
            zzcrVar2.zzk(asrVar2.f10763e);
            zzcrVar2.zzn(asrVar2.f10764f, asrVar2.f10759a);
            zzcrVar2.zzo(asrVar2.h);
            arrayList2.add(zzcrVar2.zzp());
        }
        return arrayList2;
    }

    @Override // g.bmo
    public void zzc() {
        switch (this.f17732g) {
            case 15:
                break;
            default:
                zzfqw zzfqwVar = (zzfqw) this.h;
                if (zzfqwVar != null) {
                    if (zzfqwVar.isConnected() || zzfqwVar.isConnecting()) {
                        zzfqwVar.disconnect();
                        break;
                    }
                }
                break;
        }
    }
}
