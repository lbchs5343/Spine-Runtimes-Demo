package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import com.google.android.gms.internal.ads.zzawm;
import com.google.android.gms.internal.ads.zzayn;
import com.google.android.gms.internal.ads.zzeb;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfob;
import com.google.android.gms.internal.ads.zzop;
import com.google.android.gms.internal.ads.zzov;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class sr extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f20004a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20005b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f20006c;

    public /* synthetic */ sr(int i, Object obj) {
        this.f20005b = i;
        this.f20006c = obj;
    }

    public /* synthetic */ sr(Object obj, int i, boolean z) {
        this.f20005b = i;
        this.f20006c = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int indexOf;
        ejn ejnVar;
        ejn ejnVar2;
        ejn ejnVar3;
        Executor mainExecutor;
        int i = 3;
        int i2 = 4;
        int i3 = 2;
        int i4 = 1;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        switch (this.f20005b) {
            case 0:
                ((cgo) this.f20006c).g();
                return;
            case 1:
                bff.p(context, "context");
                bff.p(intent, "intent");
                ((eil) this.f20006c).l(intent);
                return;
            case 2:
                ctl ctlVar = (ctl) this.f20006c;
                if (intent == null) {
                    return;
                }
                String action = intent.getAction();
                if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                    if (intent.hasExtra("state")) {
                        boolean booleanExtra = intent.getBooleanExtra("state", false);
                        eqi eqiVar = (eqi) ctlVar.i;
                        eqiVar.sendMessage(eqiVar.obtainMessage(10, booleanExtra ? 1 : 0, 0));
                        return;
                    }
                    return;
                }
                if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    StringBuilder sb = dxc.f14999a;
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                    eqi eqiVar2 = (eqi) ctlVar.i;
                    eqiVar2.sendMessage(eqiVar2.obtainMessage(9, activeNetworkInfo));
                    return;
                }
                return;
            case 3:
                fc fcVar = (fc) this.f20006c;
                if (intent != null) {
                    String dataString = intent.getDataString();
                    String substring = (TextUtils.isEmpty(dataString) || (indexOf = dataString.indexOf(":")) <= 0 || indexOf >= dataString.length()) ? null : dataString.substring(indexOf + 1);
                    if (TextUtils.isEmpty(substring)) {
                        return;
                    }
                    if ("android.intent.action.PACKAGE_REMOVED".equals(intent.getAction())) {
                        switch (fcVar.f16547c) {
                            case 3:
                                ((fzn) fcVar.f16548e).r();
                                break;
                            default:
                                haz hazVar = (haz) fcVar.f16548e;
                                ffr ffrVar = new ffr(i3, fcVar, substring, objArr2 == true ? 1 : 0);
                                hazVar.w = true;
                                hazVar.ad(null, null, ffrVar);
                                break;
                        }
                    }
                    if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
                        switch (fcVar.f16547c) {
                            case 3:
                                ((fzn) fcVar.f16548e).r();
                                return;
                            default:
                                haz hazVar2 = (haz) fcVar.f16548e;
                                akj akjVar = new akj(i2, fcVar, substring, objArr == true ? 1 : 0);
                                hazVar2.w = true;
                                hazVar2.ad(null, null, akjVar);
                                return;
                        }
                    }
                    return;
                }
                return;
            case 4:
                if (intent != null) {
                    String action2 = intent.getAction();
                    if (TextUtils.isEmpty(action2)) {
                        return;
                    }
                    if (!"window_state_changed".equals(action2)) {
                        if (ekq.ACTION_PERMISSION_RESULT_RECEIVER.equals(action2)) {
                            long longExtra = intent.getLongExtra(ekq.EXTRA_PERMISSION_SEQ_ID, -1L);
                            if (longExtra < 0 || longExtra != ((ka) this.f20006c).f19525e) {
                                return;
                            }
                            if (intent.getStringExtra(ekq.EXTRA_PERMISSION_RESULT).equals(ekq.PERMISSION_RESULT_OK)) {
                                ((ka) this.f20006c).aa(ka.z(false, true));
                                return;
                            } else {
                                fyt.f(context);
                                return;
                            }
                        }
                        if ("c.t.d.l.v.e".equals(action2)) {
                            ka kaVar = (ka) this.f20006c;
                            kaVar.ab();
                            new dyy(kaVar.p).f15114g.cancel(null, 30021);
                            kaVar.stopSelf();
                            return;
                        }
                        if ("c.t.d.s.c".equals(action2) && intent.getBooleanExtra("auto_hide_changed", false)) {
                            if (cro.an(context, "layout_inspector_ow_auto_hide", true)) {
                                ((ka) this.f20006c).l.c();
                                return;
                            } else {
                                ((ka) this.f20006c).l.b();
                                return;
                            }
                        }
                        return;
                    }
                    if (!ka.f19521a || (ejnVar = (ejn) intent.getParcelableExtra("accessibility_event_simple")) == null || ern.i(ejnVar.getPackageName())) {
                        return;
                    }
                    ka kaVar2 = (ka) this.f20006c;
                    String bp = eyt.bp(ejnVar.getPackageName());
                    String bp2 = eyt.bp(ejnVar.getClassName());
                    if (bp == null || !(bp.equals("com.android.systemui") || bp.equals(kaVar2.p.getPackageName()))) {
                        ka.f19523c = bp2;
                        if (kaVar2.f19527g) {
                            ArrayList arrayList = new ArrayList();
                            auj c2 = cwz.b(kaVar2.p).c(bp, false);
                            if (c2 != null && !TextUtils.isEmpty(c2.j)) {
                                arrayList.add(new bfr(kaVar2.getString(R.string.li_app_name), c2.j, false));
                            }
                            arrayList.add(new bfr(kaVar2.getString(R.string.li_package_name), bp, false));
                            arrayList.add(new bfr(kaVar2.getString(R.string.li_activity_name), bp2, false));
                            dbv dbvVar = kaVar2.u;
                            if (dbvVar != null) {
                                dbvVar.h(arrayList);
                                if (!acw.u(arrayList) && kaVar2.l.f11040g) {
                                    kaVar2.j.setVisibility(0);
                                }
                                kaVar2.u.notifyDataSetChanged();
                            }
                            if (acw.o(kaVar2.p, "tips_click_view_button")) {
                                return;
                            }
                            gm.c(kaVar2.p, R.string.li_cd_click_to_li2);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                elf elfVar = (elf) this.f20006c;
                if (intent == null || !"cn.trinea.android.developertools.ACTION_AUTO_CLICK_TOOL".equalsIgnoreCase(intent.getAction())) {
                    return;
                }
                elfVar.v = intent.getStringExtra("tool_id");
                elfVar.ag();
                return;
            case 6:
                doq doqVar = (doq) this.f20006c;
                if (intent != null && "c.t.d.p.sf".equals(intent.getAction())) {
                    intent.getStringExtra(bid.EXTRA_FILE_PATH);
                    doqVar.ag = intent.getStringExtra("fn");
                    if (dyd.aa()) {
                        doqVar.u();
                        return;
                    } else {
                        fyt.h(doqVar, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 202);
                        return;
                    }
                }
                return;
            case 7:
                if (intent == null) {
                    return;
                }
                ((cwq) this.f20006c).j(intent.getStringExtra("package_name"));
                return;
            case 8:
                b.c.d dVar = (b.c.d) this.f20006c;
                if (intent == null) {
                    return;
                }
                String action3 = intent.getAction();
                if ("c.t.d.p.sf".equals(action3)) {
                    String stringExtra = intent.getStringExtra(bid.EXTRA_FILE_PATH);
                    dVar.k = stringExtra;
                    dVar.f358f = buj.x(stringExtra);
                    if (TextUtils.isEmpty(dVar.k)) {
                        return;
                    }
                    if (dyd.aa()) {
                        dVar.ak();
                        return;
                    } else {
                        fyt.c(dVar, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, new fcd[]{new fhf(objArr3 == true ? 1 : 0, dVar)});
                        return;
                    }
                }
                if ("c.t.d.p.sf2".equals(action3)) {
                    String stringExtra2 = intent.getStringExtra(bid.EXTRA_FILE_PATH);
                    dVar.v = stringExtra2;
                    dVar.i = buj.x(stringExtra2);
                    if (TextUtils.isEmpty(dVar.v)) {
                        return;
                    }
                    if (dyd.aa()) {
                        dVar.ah();
                        return;
                    } else {
                        fyt.c(dVar, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, new fcd[]{new fhf(i4, dVar)});
                        return;
                    }
                }
                return;
            case 9:
                if (intent != null) {
                    String action4 = intent.getAction();
                    if (TextUtils.isEmpty(action4)) {
                        return;
                    }
                    if ("window_state_changed".equals(action4)) {
                        if (!fri.f17284a || (ejnVar2 = (ejn) intent.getParcelableExtra("accessibility_event_simple")) == null || ern.i(ejnVar2.getPackageName())) {
                            return;
                        }
                        fri friVar = (fri) this.f20006c;
                        String bp3 = eyt.bp(ejnVar2.getPackageName());
                        if ((bp3 == null || !(bp3.equals("com.android.systemui") || bp3.equals(friVar.j.getPackageName()))) && friVar.f17289f && !acw.o(friVar.j, "tc_tips_click_view_button")) {
                            gm.c(friVar.j, R.string.tc_cd_click_to_li2);
                            return;
                        }
                        return;
                    }
                    if ("c.t.d.t.c.e".equals(action4)) {
                        fri friVar2 = (fri) this.f20006c;
                        friVar2.p();
                        new dyy(friVar2.j).f15114g.cancel(null, 30020);
                        friVar2.stopSelf();
                        return;
                    }
                    if ("c.t.d.s.c".equals(action4) && intent.getBooleanExtra("auto_hide_changed", false)) {
                        if (cro.an(context, "text_copy_ow_auto_hide", true)) {
                            ((fri) this.f20006c).m.c();
                            return;
                        } else {
                            ((fri) this.f20006c).m.b();
                            return;
                        }
                    }
                    return;
                }
                return;
            case 10:
                drp drpVar = (drp) this.f20006c;
                if ((intent.getBooleanExtra("alternative_window_event", false) || !erl.bb(drpVar, (ejn) intent.getParcelableExtra("accessibility_event_simple"))) && drp.f14674a && (ejnVar3 = (ejn) intent.getParcelableExtra("accessibility_event_simple")) != null && ejnVar3.getEventType() == 32) {
                    String bp4 = eyt.bp(ejnVar3.getPackageName());
                    String bp5 = eyt.bp(ejnVar3.getClassName());
                    ejn ejnVar4 = drpVar.f14677d;
                    if (ejnVar4 != null && cux.ah(ejnVar4.getPackageName(), bp4) && cux.ah(drpVar.f14677d.getClassName(), bp5) && drpVar.f14677d.getEventType() == ejnVar3.getEventType()) {
                        return;
                    }
                    drpVar.f14677d = ejnVar3;
                    auj c3 = cwz.b(drpVar.h).c(bp4, false);
                    String str = c3 != null ? c3.j : null;
                    if (TextUtils.isEmpty(bp5)) {
                        return;
                    }
                    drpVar.f14676c.add(new bfr(str, bp5, true));
                    boolean z = true;
                    for (int size = drpVar.f14676c.size() - 1; size >= 0; size--) {
                        if (drpVar.f14676c.get(size) instanceof bfr) {
                            if (z) {
                                z = false;
                            } else {
                                ((bfr) drpVar.f14676c.get(size)).f11467a = false;
                            }
                        }
                    }
                    dbv dbvVar2 = drpVar.k;
                    if (dbvVar2 != null) {
                        dbvVar2.h(drpVar.f14676c);
                        drpVar.k.notifyDataSetChanged();
                        drpVar.f14680g.scrollToPosition(drpVar.f14676c.size() - 1);
                        return;
                    }
                    return;
                }
                return;
            case 11:
                try {
                    if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                        ((cyl) this.f20006c).f13765e = (int) ((intent.getIntExtra("level", 0) * 100.0f) / intent.getIntExtra("scale", 100));
                        return;
                    }
                    return;
                } catch (Throwable unused) {
                    return;
                }
            case 12:
                zzawm zzawmVar = (zzawm) this.f20006c;
                Handler handler = zzawm.f4546a;
                zzawmVar.r();
                return;
            case 13:
                zzayn zzaynVar = (zzayn) this.f20006c;
                int i5 = zzayn.f4614a;
                zzaynVar.v(3);
                return;
            case 14:
                aga agaVar = (aga) this.f20006c;
                synchronized (agaVar) {
                    try {
                        ArrayList arrayList2 = new ArrayList();
                        for (Map.Entry entry : ((WeakHashMap) agaVar.f10171c).entrySet()) {
                            if (((IntentFilter) entry.getValue()).hasAction(intent.getAction())) {
                                arrayList2.add((BroadcastReceiver) entry.getKey());
                            }
                        }
                        int size2 = arrayList2.size();
                        for (int i6 = 0; i6 < size2; i6++) {
                            ((BroadcastReceiver) arrayList2.get(i6)).onReceive(context, intent);
                        }
                    } finally {
                    }
                }
                return;
            case 15:
                zzeb zzebVar = (zzeb) this.f20006c;
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    try {
                        NetworkInfo activeNetworkInfo2 = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo2 != null && activeNetworkInfo2.isConnected()) {
                            int type = activeNetworkInfo2.getType();
                            if (type != 0) {
                                if (type != 1) {
                                    if (type != 4 && type != 5) {
                                        if (type != 6) {
                                            i = type != 9 ? 8 : 7;
                                        }
                                        i = 5;
                                    }
                                }
                                i = 2;
                            }
                            switch (activeNetworkInfo2.getSubtype()) {
                                case 1:
                                case 2:
                                    break;
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 14:
                                case 15:
                                case 17:
                                    i = 4;
                                    break;
                                case 13:
                                    i = 5;
                                    break;
                                case 16:
                                case 19:
                                default:
                                    i = 6;
                                    break;
                                case 18:
                                    i = 2;
                                    break;
                                case 20:
                                    if (zzen.zza >= 29) {
                                        i = 9;
                                        break;
                                    }
                                    break;
                            }
                        } else {
                            i = 1;
                        }
                    } catch (SecurityException unused2) {
                    }
                    if (zzen.zza >= 31 || i != 5) {
                        zzeb.f(zzebVar, i);
                        return;
                    }
                    try {
                        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                        if (telephonyManager == null) {
                            throw null;
                        }
                        azd azdVar = new azd(zzebVar);
                        mainExecutor = context.getMainExecutor();
                        telephonyManager.registerTelephonyCallback(mainExecutor, azdVar);
                        telephonyManager.unregisterTelephonyCallback(azdVar);
                        return;
                    } catch (RuntimeException unused3) {
                        zzeb.f(zzebVar, 5);
                        return;
                    }
                }
                i = 0;
                if (zzen.zza >= 31) {
                }
                zzeb.f(zzebVar, i);
                return;
            case 16:
                zzfob zzfobVar = (zzfob) this.f20006c;
                if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                    zzfobVar.zzd(true, zzfobVar.f8094d);
                    zzfobVar.f8093c = true;
                    return;
                } else {
                    if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                        zzfobVar.zzd(false, zzfobVar.f8094d);
                        zzfobVar.f8093c = false;
                        return;
                    }
                    return;
                }
            case 17:
                if (isInitialStickyBroadcast()) {
                    return;
                }
                zzov zzovVar = (zzov) this.f20006c;
                zzovVar.k(zzop.f(context, intent, zzovVar.f8828a, zzovVar.j));
                return;
            default:
                esy esyVar = (esy) this.f20006c;
                if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    esyVar.f16121e = true;
                    return;
                } else {
                    if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                        esyVar.f16121e = false;
                        return;
                    }
                    return;
                }
        }
    }
}
