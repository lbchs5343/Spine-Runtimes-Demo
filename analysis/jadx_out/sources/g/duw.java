package g;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.IntentFilter;
import android.database.Cursor;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.JsonWriter;
import androidx.core.graphics.drawable.IconCompat;
import androidx.work.impl.WorkDatabase_Impl;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbjq;
import com.google.android.gms.internal.ads.zzbno;
import com.google.android.gms.internal.ads.zzbnv;
import com.google.android.gms.internal.ads.zzbom;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcas;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzchc;
import com.google.android.gms.internal.ads.zzcnb;
import com.google.android.gms.internal.ads.zzdoc;
import com.google.android.gms.internal.ads.zzdtn;
import com.google.android.gms.internal.ads.zzdto;
import com.google.android.gms.internal.ads.zzedp;
import com.google.android.gms.internal.ads.zzedr;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfew;
import com.google.android.gms.internal.ads.zzflr;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzhgf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class duw implements bol, zzcas, zzdtn, zzgee, fbf {

    /* renamed from: a, reason: collision with root package name */
    public static volatile duw f14862a;

    /* renamed from: c, reason: collision with root package name */
    public static duw f14863c;

    /* renamed from: d, reason: collision with root package name */
    public Object f14864d;

    /* renamed from: e, reason: collision with root package name */
    public Object f14865e;

    /* renamed from: f, reason: collision with root package name */
    public Object f14866f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f14867g;
    public Object h;

    public duw(int i) {
        this.f14867g = i;
        switch (i) {
            case 4:
                this.h = new Object();
                this.f14864d = new Handler(Looper.getMainLooper(), new edi(0, this));
                break;
            case 10:
                ffr ffrVar = new ffr(13);
                this.h = ffrVar;
                dpa dpaVar = new dpa((dpa) null, ffrVar);
                this.f14865e = dpaVar;
                this.f14864d = dpaVar.u();
                gyf gyfVar = new gyf();
                this.f14866f = gyfVar;
                dpaVar.q("require", new gxw(gyfVar));
                ((HashMap) gyfVar.f18999a).put("internal.platform", cin.f12940a);
                dpaVar.q("runtime.counter", new hbz(Double.valueOf(0.0d)));
                break;
            default:
                this.h = new dqc(10);
                this.f14864d = new bcp(0);
                this.f14865e = new ArrayList();
                this.f14866f = new HashSet();
                break;
        }
    }

    public /* synthetic */ duw(int i, boolean z) {
        this.f14867g = i;
    }

    public duw(WorkDatabase_Impl workDatabase_Impl) {
        this.f14867g = 0;
        this.h = workDatabase_Impl;
        this.f14864d = new sw(workDatabase_Impl, 2);
        this.f14865e = new bnh(workDatabase_Impl, 0);
        this.f14866f = new bnh(workDatabase_Impl, 1);
    }

    public /* synthetic */ duw(bxr bxrVar, gud gudVar) {
        this.f14867g = 8;
        this.h = bxrVar;
        this.f14864d = gudVar;
    }

    public duw(zc zcVar) {
        ArrayList arrayList;
        this.f14867g = 3;
        new ArrayList();
        this.f14866f = new Bundle();
        this.f14865e = zcVar;
        Context context = zcVar.h;
        ArrayList arrayList2 = zcVar.j;
        ArrayList arrayList3 = zcVar.q;
        ArrayList arrayList4 = zcVar.f20384e;
        this.h = context;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f14864d = cmb.k(context, zcVar.k);
        } else {
            this.f14864d = new Notification.Builder(zcVar.h);
        }
        Notification notification = zcVar.s;
        ((Notification.Builder) this.f14864d).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(zcVar.f20386g).setContentText(zcVar.i).setContentInfo(null).setContentIntent(zcVar.r).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0).setNumber(0).setProgress(0, 0, false);
        int i2 = 23;
        if (i < 23) {
            Notification.Builder builder = (Notification.Builder) this.f14864d;
            IconCompat iconCompat = zcVar.f20380a;
            builder.setLargeIcon(iconCompat == null ? null : iconCompat.q());
        } else {
            Notification.Builder builder2 = (Notification.Builder) this.f14864d;
            IconCompat iconCompat2 = zcVar.f20380a;
            id.z(builder2, iconCompat2 == null ? null : iconCompat2.r(context));
        }
        ((Notification.Builder) this.f14864d).setSubText(null).setUsesChronometer(false).setPriority(zcVar.m);
        Iterator it = zcVar.n.iterator();
        while (it.hasNext()) {
            fxx fxxVar = (fxx) it.next();
            int i3 = Build.VERSION.SDK_INT;
            IconCompat h = fxxVar.h();
            boolean z = fxxVar.f17604f;
            Bundle bundle = fxxVar.f17601c;
            PendingIntent pendingIntent = fxxVar.f17605g;
            CharSequence charSequence = fxxVar.f17602d;
            Notification.Action.Builder j = i3 >= i2 ? id.j(h != null ? h.r(null) : null, charSequence, pendingIntent) : new Notification.Action.Builder(h != null ? h.n() : 0, charSequence, pendingIntent);
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putBoolean("android.support.allowGeneratedReplies", z);
            if (i3 >= 24) {
                cml.f(j, z);
            }
            bundle2.putInt("android.support.action.semanticAction", 0);
            if (i3 >= 28) {
                eyo.s(j);
            }
            if (i3 >= 29) {
                agl.a(j);
            }
            if (i3 >= 31) {
                gcn.b(j);
            }
            bundle2.putBoolean("android.support.action.showsUserInterface", fxxVar.f17599a);
            j.addExtras(bundle2);
            ((Notification.Builder) this.f14864d).addAction(j.build());
            i2 = 23;
        }
        Bundle bundle3 = zcVar.f20382c;
        if (bundle3 != null) {
            ((Bundle) this.f14866f).putAll(bundle3);
        }
        int i4 = Build.VERSION.SDK_INT;
        ((Notification.Builder) this.f14864d).setShowWhen(zcVar.o);
        ((Notification.Builder) this.f14864d).setLocalOnly(zcVar.l);
        ((Notification.Builder) this.f14864d).setGroup(zcVar.f20385f);
        ((Notification.Builder) this.f14864d).setSortKey(null);
        ((Notification.Builder) this.f14864d).setGroupSummary(false);
        ((Notification.Builder) this.f14864d).setCategory(zcVar.f20383d);
        ((Notification.Builder) this.f14864d).setColor(0);
        ((Notification.Builder) this.f14864d).setVisibility(0);
        ((Notification.Builder) this.f14864d).setPublicVersion(null);
        ((Notification.Builder) this.f14864d).setSound(notification.sound, notification.audioAttributes);
        if (i4 < 28) {
            if (arrayList3 == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(arrayList3.size());
                Iterator it2 = arrayList3.iterator();
                if (it2.hasNext()) {
                    throw tn.c(it2);
                }
            }
            if (arrayList != null) {
                if (arrayList2 == null) {
                    arrayList2 = arrayList;
                } else {
                    glm glmVar = new glm(arrayList2.size() + arrayList.size());
                    glmVar.addAll(arrayList);
                    glmVar.addAll(arrayList2);
                    arrayList2 = new ArrayList(glmVar);
                }
            }
        }
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                ((Notification.Builder) this.f14864d).addPerson((String) it3.next());
            }
        }
        if (arrayList4.size() > 0) {
            if (zcVar.f20382c == null) {
                zcVar.f20382c = new Bundle();
            }
            Bundle bundle4 = zcVar.f20382c.getBundle("android.car.EXTENSIONS");
            bundle4 = bundle4 == null ? new Bundle() : bundle4;
            Bundle bundle5 = new Bundle(bundle4);
            Bundle bundle6 = new Bundle();
            for (int i5 = 0; i5 < arrayList4.size(); i5++) {
                String num = Integer.toString(i5);
                fxx fxxVar2 = (fxx) arrayList4.get(i5);
                Bundle bundle7 = new Bundle();
                IconCompat h2 = fxxVar2.h();
                Bundle bundle8 = fxxVar2.f17601c;
                bundle7.putInt("icon", h2 != null ? h2.n() : 0);
                bundle7.putCharSequence(abn.EXTRA_TITLE, fxxVar2.f17602d);
                bundle7.putParcelable("actionIntent", fxxVar2.f17605g);
                Bundle bundle9 = bundle8 != null ? new Bundle(bundle8) : new Bundle();
                bundle9.putBoolean("android.support.allowGeneratedReplies", fxxVar2.f17604f);
                bundle7.putBundle("extras", bundle9);
                bundle7.putParcelableArray("remoteInputs", null);
                bundle7.putBoolean("showsUserInterface", fxxVar2.f17599a);
                bundle7.putInt("semanticAction", 0);
                bundle6.putBundle(num, bundle7);
            }
            bundle4.putBundle("invisible_actions", bundle6);
            bundle5.putBundle("invisible_actions", bundle6);
            if (zcVar.f20382c == null) {
                zcVar.f20382c = new Bundle();
            }
            zcVar.f20382c.putBundle("android.car.EXTENSIONS", bundle4);
            ((Bundle) this.f14866f).putBundle("android.car.EXTENSIONS", bundle5);
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 24) {
            ((Notification.Builder) this.f14864d).setExtras(zcVar.f20382c);
            cml.h((Notification.Builder) this.f14864d);
        }
        if (i6 >= 26) {
            cmb.u((Notification.Builder) this.f14864d);
            cmb.p((Notification.Builder) this.f14864d);
            cmb.x((Notification.Builder) this.f14864d);
            cmb.n((Notification.Builder) this.f14864d);
            cmb.f((Notification.Builder) this.f14864d);
            if (!TextUtils.isEmpty(zcVar.k)) {
                ((Notification.Builder) this.f14864d).setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i6 >= 28) {
            Iterator it4 = arrayList3.iterator();
            if (it4.hasNext()) {
                throw tn.c(it4);
            }
        }
        if (i6 >= 29) {
            agl.e((Notification.Builder) this.f14864d, zcVar.p);
            agl.j((Notification.Builder) this.f14864d);
        }
        if (i6 >= 36) {
            dfs.b((Notification.Builder) this.f14864d);
        }
    }

    public /* synthetic */ duw(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.f14867g = i;
        this.h = obj;
        this.f14864d = obj2;
        this.f14865e = obj3;
        this.f14866f = obj4;
    }

    public /* synthetic */ duw(Object obj, Object obj2, Object obj3, Object obj4, int i, boolean z) {
        this.f14867g = i;
        this.h = obj2;
        this.f14864d = obj3;
        this.f14865e = obj4;
        this.f14866f = obj;
    }

    public static void i(Context context) {
        if (f14862a == null) {
            duw duwVar = new duw(6, false);
            duwVar.f14864d = new HashMap();
            duwVar.h = context;
            duwVar.f14865e = new epy(context);
            cyl cylVar = new cyl();
            try {
                context.registerReceiver(new sr(11, cylVar), new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            } catch (Throwable unused) {
            }
            duwVar.f14866f = cylVar;
            f14862a = duwVar;
        }
    }

    public static duw j() {
        if (f14863c == null) {
            f14863c = new duw(4);
        }
        return f14863c;
    }

    private final void v(Throwable th) {
    }

    private final void w(Throwable th) {
    }

    @Override // g.fbf
    public void b(JsonWriter jsonWriter) {
        String str = (String) this.h;
        String str2 = (String) this.f14864d;
        Map map = (Map) this.f14865e;
        byte[] bArr = (byte[]) this.f14866f;
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        dzz.f(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(Base64.encodeToString(bArr, 0));
        }
        jsonWriter.endObject();
    }

    @Override // g.fcc
    public Object get() {
        return new efs((Executor) ((fcc) this.h).get(), (ahy) ((fcc) this.f14864d).get(), (ahe) ((fpd) this.f14865e).get(), (ddc) ((fcc) this.f14866f).get());
    }

    public boolean k(rl rlVar) {
        ep epVar = (ep) this.f14865e;
        return (epVar == null || rlVar == null || epVar.f15926a.get() != rlVar) ? false : true;
    }

    public gey l(dpa dpaVar, aqu... aquVarArr) {
        gey geyVar = gey.o;
        for (aqu aquVar : aquVarArr) {
            geyVar = cro.ai(aquVar);
            byh.at((dpa) this.f14865e);
            if ((geyVar instanceof fud) || (geyVar instanceof dxk)) {
                geyVar = ((ffr) this.h).aj(dpaVar, geyVar);
            }
        }
        return geyVar;
    }

    public void m(ep epVar) {
        Handler handler = (Handler) this.f14864d;
        int i = epVar.f15927b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        handler.removeCallbacksAndMessages(epVar);
        handler.sendMessageDelayed(Message.obtain(handler, 0, epVar), i);
    }

    public boolean n(ep epVar, int i) {
        rl rlVar = (rl) epVar.f15926a.get();
        if (rlVar == null) {
            return false;
        }
        ((Handler) this.f14864d).removeCallbacksAndMessages(epVar);
        Handler handler = cle.h;
        handler.sendMessage(handler.obtainMessage(1, i, 0, rlVar.f19906a));
        return true;
    }

    public cgv o(gxm gxmVar) {
        bff.p(gxmVar, TTDownloadField.TT_ID);
        String str = gxmVar.f18956a;
        int i = gxmVar.f18957b;
        fcg o = fcg.o(2, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?");
        o.e(1, str);
        o.f(2, i);
        WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) this.h;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            return ag.moveToFirst() ? new cgv(ag.getString(eg.l(ag, "work_spec_id")), ag.getInt(eg.l(ag, "generation")), ag.getInt(eg.l(ag, "system_id"))) : null;
        } finally {
            ag.close();
            o.p();
        }
    }

    public void p() {
        ep epVar = (ep) this.f14866f;
        if (epVar != null) {
            this.f14865e = epVar;
            this.f14866f = null;
            rl rlVar = (rl) epVar.f15926a.get();
            if (rlVar == null) {
                this.f14865e = null;
            } else {
                Handler handler = cle.h;
                handler.sendMessage(handler.obtainMessage(0, rlVar.f19906a));
            }
        }
    }

    public void q(rl rlVar) {
        synchronized (this.h) {
            try {
                if (k(rlVar)) {
                    ep epVar = (ep) this.f14865e;
                    if (!epVar.f15928c) {
                        epVar.f15928c = true;
                        ((Handler) this.f14864d).removeCallbacksAndMessages(epVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void r(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((bcp) this.f14864d).get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                r(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public void s(rl rlVar) {
        synchronized (this.h) {
            try {
                if (k(rlVar)) {
                    ep epVar = (ep) this.f14865e;
                    if (epVar.f15928c) {
                        epVar.f15928c = false;
                        m(epVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public dcq t(azu azuVar, dcq dcqVar) {
        if (azuVar != null) {
            cyl cylVar = (cyl) this.f14866f;
            epy epyVar = (epy) this.f14865e;
            Context context = (Context) this.h;
            HashMap hashMap = (HashMap) this.f14864d;
            fv fvVar = (fv) hashMap.get(azuVar);
            if (fvVar == null) {
                int i = bvo.f12278a[azuVar.ordinal()];
                if (i == 1) {
                    fvVar = new fv(azu.JAVA, context, epyVar, cylVar, 2);
                } else if (i == 2) {
                    fvVar = new fv(azu.ANR, context, epyVar, cylVar, 0);
                } else if (i == 3) {
                    fvVar = new fv(azu.CUSTOM_JAVA, context, epyVar, cylVar, 1);
                }
                if (fvVar != null) {
                    hashMap.put(azuVar, fvVar);
                }
            }
            if (fvVar != null) {
                switch (fvVar.f17466d) {
                    case 0:
                        fvVar.g(dcqVar);
                        clx g2 = clx.g(fvVar.f17467e);
                        g2.n(eca.f15280e.ag());
                        try {
                            ((JSONObject) g2.f13101c).put("device_id", eca.f().h());
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                        g2.s(fvVar.f17468f.ox());
                        dcqVar.j("header", (JSONObject) g2.f13101c);
                        dcqVar.j(ContentProviderManager.PLUGIN_PROCESS_NAME, acw.av());
                        eg.q(dcqVar, g2, fvVar.f17465c);
                        break;
                    case 1:
                        fvVar.g(dcqVar);
                        clx g3 = clx.g(fvVar.f17467e);
                        g3.n(eca.f15280e.ag());
                        try {
                            ((JSONObject) g3.f13101c).put("device_id", eca.f().h());
                        } catch (JSONException e3) {
                            e3.printStackTrace();
                        }
                        g3.s(fvVar.f17468f.ox());
                        dcqVar.j("header", (JSONObject) g3.f13101c);
                        break;
                    default:
                        fvVar.g(dcqVar);
                        dcqVar.j("app_count", 1);
                        dcqVar.j("magic_tag", "ss_app_log");
                        Map ag = eca.f15280e.ag();
                        if (ag.containsKey("app_version")) {
                            dcqVar.j("crash_version", ag.get("app_version"));
                        }
                        if (ag.containsKey("version_name")) {
                            dcqVar.j("app_version", ag.get("version_name"));
                        }
                        if (ag.containsKey("version_code")) {
                            try {
                                dcqVar.j("crash_version_code", Integer.valueOf(Integer.parseInt(ag.get("version_code").toString())));
                            } catch (Exception unused) {
                                dcqVar.j("crash_version_code", ag.get("version_code"));
                            }
                        }
                        if (ag.containsKey("update_version_code")) {
                            try {
                                dcqVar.j("crash_update_version_code", Integer.valueOf(Integer.parseInt(ag.get("update_version_code").toString())));
                            } catch (Exception unused2) {
                                dcqVar.j("crash_update_version_code", ag.get("update_version_code"));
                            }
                        }
                        clx g4 = clx.g(fvVar.f17467e);
                        g4.n(eca.f15280e.ag());
                        try {
                            ((JSONObject) g4.f13101c).put("device_id", eca.f().h());
                        } catch (JSONException e4) {
                            e4.printStackTrace();
                        }
                        g4.s(fvVar.f17468f.ox());
                        dcqVar.j("header", (JSONObject) g4.f13101c);
                        eg.q(dcqVar, g4, fvVar.f17465c);
                        break;
                }
            }
        }
        return dcqVar;
    }

    public void u(cgv cgvVar) {
        WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) this.h;
        workDatabase_Impl.al();
        workDatabase_Impl.an();
        try {
            ((sw) this.f14864d).c(cgvVar);
            workDatabase_Impl.ah();
        } finally {
            workDatabase_Impl.am();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    public /* bridge */ /* synthetic */ zzdtn zza(String str) {
        str.getClass();
        this.f14866f = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public void zza(Object obj) {
        zzbnv zzbnvVar = (zzbnv) obj;
        agd.e("callJs > getEngine: Promise fulfilled");
        Object obj2 = this.f14864d;
        zzcao zzcaoVar = (zzcao) this.f14865e;
        zzbom zzbomVar = (zzbom) this.f14866f;
        zzbno zzbnoVar = (zzbno) this.h;
        try {
            esy esyVar = ti.f20033a.z;
            String uuid = UUID.randomUUID().toString();
            zzbjq.zzo.zzc(uuid, new exh(zzbomVar, zzbnoVar, zzcaoVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TTDownloadField.TT_ID, uuid);
            jSONObject.put("args", zzbomVar.f4906c.zzb(obj2));
            zzbnvVar.zzl(zzbomVar.f4904a, jSONObject);
        } catch (Exception e2) {
            try {
                zzcaoVar.zzd(e2);
                agd.f("Unable to invokeJavascript", e2);
            } finally {
                zzbnoVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        int i = this.f14867g;
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    public /* bridge */ /* synthetic */ zzdtn zzb(long j) {
        this.f14865e = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        int i;
        switch (this.f14867g) {
            case 9:
                zzdoc zzdocVar = (zzdoc) this.f14866f;
                zzcnb zzcnbVar = (zzcnb) this.f14865e;
                zzcfk zzcfkVar = (zzcfk) obj;
                zzfet zzfetVar = (zzfet) this.h;
                zzcfkVar.zzW(zzfetVar, (zzfew) this.f14864d);
                zzchc zzN = zzcfkVar.zzN();
                zzbce zzbceVar = zzbcn.zzjM;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && zzN != null) {
                    zzN.zzJ(zzcnbVar, zzdocVar.i, zzdocVar.k);
                    zzN.zzL(zzcnbVar, zzdocVar.i, zzdocVar.f6283c);
                }
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzmH)).booleanValue() && zzN != null) {
                    zzN.zzM(zzfetVar);
                    break;
                }
                break;
            default:
                zzflr zzflrVar = (zzflr) this.f14865e;
                zzcnb zzcnbVar2 = (zzcnb) this.f14864d;
                String str = (String) obj;
                zzcfk zzcfkVar2 = (zzcfk) this.h;
                if (!zzcfkVar2.zzD().zzai) {
                    if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjI)).booleanValue() || zzcnbVar2 == null || !zzcnb.zzj(str)) {
                        zzflrVar.zzc(str, null);
                        break;
                    } else {
                        zzcnbVar2.zzi(str, zzflrVar, cbv.f12612a.f12614c);
                        break;
                    }
                } else {
                    ti tiVar = ti.f20033a;
                    tiVar.v.getClass();
                    long currentTimeMillis = System.currentTimeMillis();
                    String str2 = zzcfkVar2.zzR().zzb;
                    if (!tiVar.f20034ab.zzA(zzcfkVar2.getContext())) {
                        if ((!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzge)).booleanValue() || !zzcfkVar2.zzD().zzS) && zzcfkVar2.zzD().zzad == null) {
                            i = 1;
                            ((zzedp) this.f14866f).zzd(new zzedr(currentTimeMillis, str2, str, i));
                            break;
                        }
                    }
                    i = 2;
                    ((zzedp) this.f14866f).zzd(new zzedr(currentTimeMillis, str2, str, i));
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    public zzdto zzc() {
        zzhgf.zzc((Long) this.f14865e, Long.class);
        zzhgf.zzc((String) this.f14866f, String.class);
        return new gkr((bxr) this.h, (gud) this.f14864d, (Long) this.f14865e, (String) this.f14866f);
    }
}
