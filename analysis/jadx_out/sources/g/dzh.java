package g;

import android.content.ClipDescription;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.work.impl.WorkDatabase_Impl;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzakd;
import com.google.android.gms.internal.ads.zzalr;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzbkq;
import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbnu;
import com.google.android.gms.internal.ads.zzcaq;
import com.google.android.gms.internal.ads.zzcr;
import com.google.android.gms.internal.ads.zzct;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdtv;
import com.google.android.gms.internal.ads.zzdtw;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfko;
import com.google.android.gms.internal.ads.zzhgf;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Comparator;
import j$.util.List;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.stream.Collectors;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class dzh implements bmm, cdx, ebz, zzakd, zzcaq, zzdtv, my {

    /* renamed from: a, reason: collision with root package name */
    public static dzh f15120a;

    /* renamed from: f, reason: collision with root package name */
    public Object f15121f;

    /* renamed from: g, reason: collision with root package name */
    public Object f15122g;
    public final /* synthetic */ int h;
    public Object i;

    public dzh(int i) {
        this.h = i;
        switch (i) {
            case 17:
                this.i = new guq("", 0L, null);
                this.f15121f = new guq("", 0L, null);
                this.f15122g = new ArrayList();
                break;
            case 18:
            default:
                String uuid = UUID.randomUUID().toString();
                bff.e(uuid, "randomUUID().toString()");
                gei geiVar = gei.n;
                this.i = dwm.ac(uuid);
                this.f15121f = cso.f13443b;
                this.f15122g = new ArrayList();
                break;
            case 19:
                this.i = new ArrayList();
                this.f15121f = new ArrayList();
                this.f15122g = new ArrayList();
                break;
        }
    }

    public /* synthetic */ dzh(int i, Object obj) {
        this.h = i;
        this.i = obj;
    }

    public /* synthetic */ dzh(int i, boolean z) {
        this.h = i;
    }

    public dzh(Context context, TypedArray typedArray) {
        this.h = 12;
        this.i = context;
        this.f15121f = typedArray;
    }

    public dzh(Context context, LocationManager locationManager) {
        this.h = 14;
        this.f15122g = new fww();
        this.i = context;
        this.f15121f = locationManager;
    }

    public dzh(WorkDatabase_Impl workDatabase_Impl) {
        this.h = 0;
        this.i = workDatabase_Impl;
        this.f15121f = new sw(workDatabase_Impl, 6);
        this.f15122g = new bnh(workDatabase_Impl, 20);
    }

    public dzh(aep aepVar) {
        this.h = 3;
        this.i = new ArrayList();
        this.f15121f = new dcu();
        this.f15122g = aepVar;
    }

    public dzh(fus fusVar) {
        this.h = 11;
        this.i = new ajs(fusVar);
        this.f15121f = new Handler();
    }

    public dzh(guq guqVar) {
        this.h = 17;
        this.i = guqVar;
        this.f15121f = guqVar.clone();
        this.f15122g = new ArrayList();
    }

    public dzh(ku kuVar, cep cepVar, cfg cfgVar, crh crhVar) {
        this.h = 13;
        this.i = kuVar;
        this.f15121f = cepVar;
        this.f15122g = crhVar;
    }

    public /* synthetic */ dzh(Object obj, Object obj2, Object obj3, int i) {
        this.h = i;
        this.f15122g = obj;
        this.i = obj2;
        this.f15121f = obj3;
    }

    public /* synthetic */ dzh(Object obj, Object obj2, Object obj3, int i, boolean z) {
        this.h = i;
        this.i = obj;
        this.f15121f = obj2;
        this.f15122g = obj3;
    }

    public dzh(ArrayList arrayList) {
        this.h = 18;
        this.i = Collections.unmodifiableList(new ArrayList(arrayList));
        int size = arrayList.size();
        this.f15121f = new long[size + size];
        for (int i = 0; i < arrayList.size(); i++) {
            zzalr zzalrVar = (zzalr) arrayList.get(i);
            long[] jArr = (long[]) this.f15121f;
            int i2 = i + i;
            jArr[i2] = zzalrVar.zzb;
            jArr[i2 + 1] = zzalrVar.zzc;
        }
        long[] jArr2 = (long[]) this.f15121f;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f15122g = copyOf;
        Arrays.sort(copyOf);
    }

    public static dzh j(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new dzh(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    public static boolean k(fza fzaVar, List list, fza fzaVar2, HashSet hashSet) {
        if (fzaVar.l.g(csv.SYNTHETIC) && !ffb.cd(fzaVar, hay.CONTINUE)) {
            List list2 = fzaVar.f17685e;
            if (!list2.isEmpty()) {
                fza fzaVar3 = (fza) list2.get(0);
                if (!fzaVar3.l.g(csv.ADDED_TO_REGION) && !fzaVar2.f17687g.get(fzaVar3.x) && !hashSet.contains(fzaVar3)) {
                    Iterator it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (!((fza) it.next()).f17687g.get(fzaVar3.x)) {
                            acq acqVar = acq.t;
                            if (!fzaVar.l.e(acqVar).isEmpty()) {
                                Iterator it2 = fzaVar.l.e(acqVar).iterator();
                                while (it2.hasNext()) {
                                    if (((azi) it2.next()).f11108a.ah == hay.BREAK) {
                                        break;
                                    }
                                }
                            }
                            Iterator it3 = hashSet.iterator();
                            while (it3.hasNext()) {
                                if (ffb.ac(fzaVar3, (fza) it3.next())) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static void l(gcv gcvVar) {
        fza fzaVar = gcvVar.f17903d;
        List<fza> list = fzaVar.f17685e;
        if (list.size() <= 1) {
            return;
        }
        HashSet g2 = gcvVar.g();
        for (fza fzaVar2 : list) {
            if (k(fzaVar2, list, fzaVar, g2)) {
                fzaVar2.ac.add(new eek(hay.CONTINUE, 0));
            }
        }
    }

    public ColorStateList aa(int i) {
        int resourceId;
        ColorStateList bh;
        TypedArray typedArray = (TypedArray) this.f15121f;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (bh = eyt.bh((Context) this.i, resourceId)) == null) ? typedArray.getColorStateList(i) : bh;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009c, code lost:
    
        if (r2.bb(r4) == false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean ab(ftm ftmVar, gcv gcvVar, fza fzaVar, fza fzaVar2, exw exwVar) {
        gcv gcvVar2;
        exw exwVar2;
        boolean z;
        hed hedVar = (hed) this.i;
        fza fzaVar3 = exwVar.f16344b;
        fza cf = ffb.cf(fzaVar3);
        acq acqVar = acq.at;
        Iterator it = cf.l.e(acqVar).iterator();
        loop0: while (true) {
            gcvVar2 = null;
            if (!it.hasNext()) {
                exwVar2 = null;
                z = false;
                break;
            }
            gcv gcvVar3 = (gcv) it.next();
            if (gcvVar3 != gcvVar) {
                for (gcv gcvVar4 = gcvVar.f17901b; gcvVar4 != null; gcvVar4 = gcvVar4.f17901b) {
                    if (gcvVar4 == gcvVar3) {
                        exwVar2 = exwVar;
                        z = true;
                        break loop0;
                    }
                }
            }
        }
        if (!z) {
            fza fzaVar4 = ffb.cf(fzaVar3) != fzaVar3 ? null : exwVar.f16343a;
            BitSet bitSet = new BitSet(hedVar.ak.size());
            while (true) {
                if (fzaVar3 == null || bitSet.get(fzaVar3.x)) {
                    break;
                }
                bitSet.set(fzaVar3.x);
                if (fzaVar4 == null || !ffb.ac(fzaVar, fzaVar3)) {
                    List list = fzaVar3.z;
                    fza fzaVar5 = fzaVar3;
                    fzaVar3 = list.size() == 1 ? (fza) list.get(0) : null;
                    fzaVar4 = fzaVar5;
                } else if (!ffb.ah(fzaVar4)) {
                    List aj = ffb.aj(fzaVar4);
                    if (!aj.isEmpty()) {
                        fza fzaVar6 = (fza) awf.q(1, aj);
                        if (!fzaVar6.l.g(csv.MTH_EXIT_BLOCK)) {
                            if (!fzaVar6.l.g(csv.RETURN)) {
                            }
                        }
                    }
                    Iterator it2 = ffb.x(hedVar.aj, fzaVar4).iterator();
                    while (it2.hasNext()) {
                        if (ffb.cd((fza) it2.next(), hay.SWITCH)) {
                            break;
                        }
                    }
                    exwVar2 = new exw(fzaVar4, fzaVar3, false);
                    z = true;
                }
            }
        }
        if (z) {
            eek eekVar = new eek(hay.BREAK, 0);
            eekVar.o(acqVar, gcvVar);
            fza fzaVar7 = exwVar2.f16343a;
            fza fzaVar8 = exwVar2.f16344b;
            azi aziVar = new azi(fzaVar7, fzaVar8, eekVar);
            acq acqVar2 = acq.t;
            if (!fzaVar7.l.e(acqVar2).contains(aziVar)) {
                fzaVar7.o(acqVar2, aziVar);
            }
            if (!fzaVar8.l.e(acqVar2).contains(aziVar)) {
                fzaVar8.o(acqVar2, aziVar);
            }
            ftmVar.c(fzaVar3);
            if (hedVar.bj(fzaVar3).isEmpty()) {
                List bj = hedVar.bj(fzaVar2);
                if (bj.size() >= 2) {
                    Iterator it3 = bj.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            break;
                        }
                        gcv gcvVar5 = (gcv) it3.next();
                        if (gcvVar5.f17901b == null) {
                            gcvVar2 = gcvVar5;
                            break;
                        }
                    }
                    if (gcvVar2 != null && gcvVar2.f17903d != fzaVar3 && !gcvVar2.g().contains(fzaVar3)) {
                        dhu dhuVar = new dhu(gcvVar2);
                        eekVar.m(dhuVar);
                        gcvVar2.f17902c.m(dhuVar);
                    }
                }
            }
            return true;
        }
        return false;
    }

    public void ac(aep aepVar) {
        ArrayList arrayList = (ArrayList) this.i;
        arrayList.clear();
        int size = aepVar.x.size();
        for (int i = 0; i < size; i++) {
            brh brhVar = (brh) aepVar.x.get(i);
            fol[] folVarArr = brhVar.ch;
            fol folVar = folVarArr[0];
            fol folVar2 = fol.MATCH_CONSTRAINT;
            if (folVar == folVar2 || folVarArr[1] == folVar2) {
                arrayList.add(brhVar);
            }
        }
        aepVar.v.f10693f = true;
    }

    @Override // g.bmm
    public void ad(czh czhVar, anx anxVar) {
        String str;
        btp btpVar = (btp) this.i;
        fyl fylVar = (fyl) this.f15122g;
        cbf cbfVar = (cbf) anxVar.f10540b;
        if (cbfVar == null) {
            fyl.e(btpVar, 1305, null);
            return;
        }
        if (cbfVar.getCode() != 0) {
            fyl.e(btpVar, 1000, null);
            return;
        }
        cdy cdyVar = fylVar.f17639b;
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        long currentTimeMillis = System.currentTimeMillis();
        String str2 = (String) this.f15121f;
        if (!TextUtils.isEmpty("a") && currentTimeMillis >= 0) {
            StringBuilder sb = new StringBuilder();
            String l = Long.toString(currentTimeMillis);
            for (int i = 0; i < l.length(); i++) {
                if (i % 2 == 0) {
                    sb.append(buj.am(1, "0123456789"));
                    sb.append(l.charAt(i));
                } else {
                    sb.append(l.charAt(i));
                }
            }
            acw.au(cdyVar, "dpa-ati", sb.toString());
            if (!TextUtils.isEmpty("a") && currentTimeMillis >= 0 && !TextUtils.isEmpty("zPede")) {
                StringBuilder sb2 = new StringBuilder();
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(currentTimeMillis);
                sb2.append(buj.am(3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"));
                sb2.append(calendar.get(13));
                sb2.append("de");
                sb2.append(calendar.get(2));
                sb2.append(calendar.get(11));
                sb2.append(calendar.get(7));
                sb2.append(buj.am(2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"));
                acw.au(cdyVar, "dpa-ame", sb2.toString());
                if (!TextUtils.isEmpty("a") && currentTimeMillis >= 0 && !TextUtils.isEmpty("zPede") && !TextUtils.isEmpty(str2) && str2.length() >= 10) {
                    String sb3 = new StringBuilder(str2.substring(0, 8)).reverse().toString();
                    String sb4 = new StringBuilder(str2.substring(8)).reverse().toString();
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(buj.am(2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"));
                    Calendar calendar2 = Calendar.getInstance();
                    calendar2.setTimeInMillis(currentTimeMillis);
                    sb5.append(calendar2.get(7));
                    sb5.append(calendar2.get(11));
                    sb5.append(sb3);
                    sb5.append("de");
                    sb5.append(sb4);
                    sb5.append(calendar2.get(14));
                    sb5.append(calendar2.get(5));
                    sb5.append(buj.am(3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"));
                    acw.au(cdyVar, "dpa-ack", sb5.toString());
                    if (!TextUtils.isEmpty("a") && currentTimeMillis >= 0 && !TextUtils.isEmpty("zPede")) {
                        if (TextUtils.isEmpty("de") || currentTimeMillis < 0 || TextUtils.isEmpty(str2)) {
                            str = null;
                        } else {
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append(buj.am(5, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"));
                            sb6.append(acr.bn(currentTimeMillis + "de" + str2));
                            sb6.append(buj.am(7, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"));
                            str = sb6.toString();
                        }
                        if (!TextUtils.isEmpty(str)) {
                            acw.au(cdyVar, "dpa-ass", str);
                            fyl.f(btpVar);
                            return;
                        }
                    }
                }
            }
        }
        fyl.e(btpVar, 1302, null);
    }

    public void ae(List list, Function function) {
        List list2 = (List) this.i;
        if (evh.m(list)) {
            return;
        }
        List t = acw.t(list, new eug(4, function));
        Iterator it = t.iterator();
        if (it.hasNext()) {
            ((fgh) it.next()).getClass();
            throw null;
        }
        List.b.sort(t, Comparator.b.thenComparing(new ens(list2), aqn.f10659b));
        this.f15122g = new IdentityHashMap();
        Iterable.b.forEach(list2, new agx(18, this));
        Iterable.b.forEach(t, new esk(this));
        this.f15121f = (Set) Collection.b.stream(t).map(new gpn(16)).collect(Collectors.toSet());
        Iterator it2 = t.iterator();
        if (it2.hasNext()) {
            ((fgh) it2.next()).getClass();
            throw null;
        }
    }

    public void af() {
        ((TypedArray) this.f15121f).recycle();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00a5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Map ag() {
        String str;
        Class be;
        Field field;
        int intValue;
        Context context = (Context) this.i;
        Map dq = ((cmc) this.f15121f).dq();
        if (dq == null) {
            dq = new HashMap(4);
        }
        if (!dq.isEmpty() && ((dq.containsKey("app_version") || dq.containsKey("version_name")) && dq.containsKey("version_code") && dq.containsKey("update_version_code"))) {
            return dq;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            dq.put("version_name", packageInfo.versionName);
            dq.put("version_code", Integer.valueOf(packageInfo.versionCode));
            if (dq.get("update_version_code") == null) {
                Bundle bundle = packageInfo.applicationInfo.metaData;
                Object obj = bundle != null ? bundle.get("UPDATE_VERSION_CODE") : null;
                if (obj == null) {
                    obj = dq.get("version_code");
                }
                dq.put("update_version_code", obj);
                return dq;
            }
        } catch (Throwable unused) {
            Class be2 = acw.be(context);
            if (acw.f10014e == null && be2 != null) {
                try {
                    acw.f10014e = be2.getDeclaredField("VERSION_NAME");
                } catch (NoSuchFieldException unused2) {
                }
            }
            Field field2 = acw.f10014e;
            if (field2 != null) {
                try {
                    str = (String) field2.get(null);
                } catch (Throwable unused3) {
                    str = "";
                    dq.put("version_name", str);
                    be = acw.be(context);
                    if (acw.j == null && be != null) {
                        try {
                            acw.j = be.getDeclaredField("VERSION_CODE");
                        } catch (NoSuchFieldException unused4) {
                        }
                    }
                    field = acw.j;
                    if (field != null) {
                        try {
                            intValue = ((Integer) field.get(null)).intValue();
                        } catch (Throwable unused5) {
                            intValue = -1;
                            dq.put("version_code", Integer.valueOf(intValue));
                            if (dq.get("update_version_code") == null) {
                                dq.put("update_version_code", dq.get("version_code"));
                            }
                            return dq;
                        }
                        dq.put("version_code", Integer.valueOf(intValue));
                        if (dq.get("update_version_code") == null) {
                        }
                        return dq;
                    }
                    intValue = -1;
                    dq.put("version_code", Integer.valueOf(intValue));
                    if (dq.get("update_version_code") == null) {
                    }
                    return dq;
                }
                dq.put("version_name", str);
                be = acw.be(context);
                if (acw.j == null) {
                    acw.j = be.getDeclaredField("VERSION_CODE");
                }
                field = acw.j;
                if (field != null) {
                }
                intValue = -1;
                dq.put("version_code", Integer.valueOf(intValue));
                if (dq.get("update_version_code") == null) {
                }
            }
            str = "";
            dq.put("version_name", str);
            be = acw.be(context);
            if (acw.j == null) {
            }
            field = acw.j;
            if (field != null) {
            }
            intValue = -1;
            dq.put("version_code", Integer.valueOf(intValue));
            if (dq.get("update_version_code") == null) {
            }
        }
        return dq;
    }

    public void ah(String str, Set set) {
        bff.p(str, TTDownloadField.TT_ID);
        bff.p(set, "tags");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ets etsVar = new ets((String) it.next(), str);
            WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) this.i;
            workDatabase_Impl.al();
            workDatabase_Impl.an();
            try {
                ((sw) this.f15121f).c(etsVar);
                workDatabase_Impl.ah();
            } finally {
                workDatabase_Impl.am();
            }
        }
    }

    @Override // g.cdx
    public Object b() {
        return null;
    }

    @Override // g.cdx
    public Uri c() {
        return (Uri) this.i;
    }

    public /* bridge */ /* synthetic */ Object clone() {
        switch (this.h) {
            case 17:
                dzh dzhVar = new dzh(((guq) this.i).clone());
                Iterator it = ((ArrayList) this.f15122g).iterator();
                while (it.hasNext()) {
                    ((ArrayList) dzhVar.f15122g).add(((guq) it.next()).clone());
                }
                return dzhVar;
            default:
                return super.clone();
        }
    }

    @Override // g.cdx
    public void d() {
    }

    @Override // g.ebz
    public void dq(Bitmap bitmap) {
        if (bitmap != null) {
            hcl hclVar = (hcl) this.i;
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, hclVar.f19224e, hclVar.h, false);
            ((fzx) ((emr) this.f15122g).n).f17753ab.put((String) this.f15121f, createScaledBitmap);
            dxo.d(new efr(this, 0, createScaledBitmap));
        }
    }

    @Override // g.cdx
    public Uri e() {
        return (Uri) this.f15122g;
    }

    @Override // g.cdx
    public ClipDescription getDescription() {
        return (ClipDescription) this.f15121f;
    }

    public void m(aep aepVar, int i, int i2, int i3) {
        aepVar.getClass();
        int i4 = aepVar.bb;
        int i5 = aepVar.au;
        aepVar.bb = 0;
        aepVar.au = 0;
        aepVar.ed(i2);
        aepVar.dj(i3);
        if (i4 < 0) {
            aepVar.bb = 0;
        } else {
            aepVar.bb = i4;
        }
        if (i5 < 0) {
            aepVar.au = 0;
        } else {
            aepVar.au = i5;
        }
        aep aepVar2 = (aep) this.f15122g;
        aepVar2.f10113f = i;
        aepVar2.ae();
    }

    public void n(dwq dwqVar, ByteArrayOutputStream byteArrayOutputStream) {
        HashMap hashMap = (HashMap) this.i;
        dtc dtcVar = new dtc(byteArrayOutputStream, hashMap, (HashMap) this.f15121f, (xx) this.f15122g);
        xx xxVar = (xx) hashMap.get(dwq.class);
        if (xxVar != null) {
            xxVar.b(dwqVar, dtcVar);
        } else {
            throw new fgn("No encoder for " + dwq.class);
        }
    }

    public Drawable o(int i) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.f15121f;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? typedArray.getDrawable(i) : fso.ai((Context) this.i, resourceId);
    }

    public ArrayList p(String str) {
        fcg o = fcg.o(1, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
        o.e(1, str);
        WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) this.i;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            ArrayList arrayList = new ArrayList(ag.getCount());
            while (ag.moveToNext()) {
                arrayList.add(ag.getString(0));
            }
            return arrayList;
        } finally {
            ag.close();
            o.p();
        }
    }

    public void q(fij fijVar) {
        bco bcoVar = new bco(9);
        crh crhVar = (crh) this.f15122g;
        ku kuVar = (ku) this.i;
        cep cepVar = (cep) this.f15121f;
        ekr ekrVar = crhVar.f13377e;
        cq cqVar = fijVar.f16836b;
        fpd d2 = ku.d();
        String str = kuVar.f19566a;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        d2.f17190f = str;
        if (cqVar == null) {
            throw new NullPointerException("Null priority");
        }
        d2.f17188d = cqVar;
        d2.f17187c = kuVar.f19567b;
        ku w = d2.w();
        daw dawVar = new daw(1);
        dawVar.f13888g = new HashMap();
        dawVar.f13883b = Long.valueOf(crhVar.f13375c.l());
        dawVar.f13885d = Long.valueOf(crhVar.f13376d.l());
        dawVar.f13886e = "PLAY_BILLING_LIBRARY";
        dawVar.f13882a = new csl(cepVar, fijVar.f16835a.j());
        dawVar.f13887f = null;
        fyn fynVar = (fyn) ekrVar;
        fynVar.f17647e.execute(new gtt(fynVar, w, bcoVar, dawVar.y()));
    }

    public Typeface r(int i, int i2, ejj ejjVar) {
        int resourceId = ((TypedArray) this.f15121f).getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.f15122g) == null) {
            this.f15122g = new TypedValue();
        }
        Context context = (Context) this.i;
        TypedValue typedValue = (TypedValue) this.f15122g;
        ThreadLocal threadLocal = fbs.f16530a;
        if (context.isRestricted()) {
            return null;
        }
        return fbs.e(context, resourceId, typedValue, i2, ejjVar, true, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x021e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x005b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x011e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x005b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Boolean s(fza fzaVar, gcv gcvVar) {
        java.util.List<fza> bj;
        boolean isEmpty;
        boolean isEmpty2;
        java.util.List list;
        int i;
        java.util.List list2;
        Iterator it;
        gxv c2;
        boolean z;
        gxv i2;
        Iterator it2;
        exw exwVar;
        boolean z2;
        BitSet bitSet;
        hed hedVar = (hed) this.i;
        LinkedList linkedList = new LinkedList(gcvVar.f());
        while (!linkedList.isEmpty()) {
            exw exwVar2 = (exw) linkedList.remove();
            fza fzaVar2 = exwVar2.f16344b;
            fza fzaVar3 = exwVar2.f16344b;
            if (exwVar2.l.g(csv.SYNTHETIC)) {
                bj = ffb.bj(hedVar, fzaVar3.i);
            } else {
                if (fzaVar3.f17685e.size() > 1) {
                    bitSet = new BitSet();
                    bitSet.set(fzaVar3.x);
                } else {
                    bitSet = fzaVar3.i;
                }
                bj = ffb.bj(hedVar, bitSet);
            }
            if (!fzaVar.ae(fzaVar2) && fzaVar != fzaVar2) {
                for (fza fzaVar4 : bj) {
                    if (fzaVar4 != fzaVar) {
                        if (fzaVar4 != hedVar.ad) {
                            java.util.List list3 = fzaVar4.f17684d;
                            if (!list3.isEmpty()) {
                                isEmpty = list3.size() == 1 ? ((fza) list3.get(0)).f17684d.isEmpty() : false;
                                if (isEmpty) {
                                    continue;
                                } else {
                                    fza cf = fzaVar4.ac.isEmpty() ? ffb.cf(fzaVar4) : fzaVar4;
                                    if (!ffb.ac(fzaVar2, fzaVar4)) {
                                        if (fzaVar4.l.g(csv.LOOP_START)) {
                                            gcv gcvVar2 = gcvVar.f17901b;
                                            while (true) {
                                                if (gcvVar2 == null) {
                                                    gcvVar2 = null;
                                                    break;
                                                }
                                                if (gcvVar2.f17902c == fzaVar4) {
                                                    break;
                                                }
                                                gcvVar2 = gcvVar2.f17901b;
                                            }
                                            if (gcvVar2 != null) {
                                                fza fzaVar5 = gcvVar2.f17903d;
                                                java.util.List<fza> list4 = fzaVar5.f17685e;
                                                if (list4.size() > 1) {
                                                    for (fza fzaVar6 : list4) {
                                                        if (!ffb.ac(fzaVar2, fzaVar6) || k(fzaVar6, list4, fzaVar5, gcvVar2.g())) {
                                                        }
                                                    }
                                                }
                                            } else {
                                                continue;
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                    if (cf != hedVar.ad) {
                                        java.util.List list5 = cf.f17684d;
                                        if (!list5.isEmpty()) {
                                            isEmpty2 = list5.size() == 1 ? ((fza) list5.get(0)).f17684d.isEmpty() : false;
                                            if (!isEmpty2 && cf != fzaVar) {
                                                list = cf.z;
                                                if (list.isEmpty()) {
                                                    Iterator it3 = list.iterator();
                                                    while (it3.hasNext()) {
                                                        fza cf2 = ffb.cf((fza) it3.next());
                                                        if (cf2 != hedVar.ad) {
                                                            java.util.List list6 = cf2.f17684d;
                                                            if (!list6.isEmpty()) {
                                                                if (list6.size() == 1) {
                                                                    i = 0;
                                                                    z2 = ((fza) list6.get(0)).f17684d.isEmpty();
                                                                } else {
                                                                    i = 0;
                                                                    z2 = false;
                                                                }
                                                                if (!z2 || cf2 == fzaVar) {
                                                                }
                                                            }
                                                        }
                                                        z2 = true;
                                                        i = 0;
                                                        if (!z2) {
                                                        }
                                                    }
                                                } else {
                                                    i = 0;
                                                }
                                                list2 = fzaVar4.f17685e;
                                                fza ba = ffb.ba((fza) list2.get(i), Boolean.TRUE, true);
                                                it = list2.iterator();
                                                while (it.hasNext()) {
                                                    fza ba2 = ffb.ba((fza) it.next(), Boolean.TRUE, true);
                                                    if (fzaVar4.f17687g.get(ba2.x)) {
                                                        ba = ba2;
                                                    }
                                                }
                                                c2 = ghm.c(hedVar, ba);
                                                if (c2 != null && (i2 = ghm.i(c2)) != null) {
                                                    fon fonVar = (fon) i2.f18978b;
                                                    it2 = list2.iterator();
                                                    while (it2.hasNext()) {
                                                        if (!fonVar.f17143b.get(ffb.ba((fza) it2.next(), Boolean.TRUE, true).x)) {
                                                        }
                                                    }
                                                    exwVar = new exw(fzaVar4, fzaVar4, true);
                                                    if (linkedList.contains(exwVar)) {
                                                        linkedList.add(exwVar);
                                                    }
                                                }
                                                for (azi aziVar : fzaVar4.l.e(acq.t)) {
                                                    eek eekVar = aziVar.f11108a;
                                                    if (eekVar.ah == hay.BREAK) {
                                                        Iterator it4 = ((frs) eekVar.l.k(acq.at)).f17307b.iterator();
                                                        while (it4.hasNext()) {
                                                            gcv gcvVar3 = (gcv) it4.next();
                                                            gcv gcvVar4 = gcvVar.f17901b;
                                                            while (true) {
                                                                if (gcvVar4 == null) {
                                                                    z = false;
                                                                    break;
                                                                }
                                                                if (gcvVar4 == gcvVar3) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                gcvVar4 = gcvVar4.f17901b;
                                                            }
                                                            if (!z || aziVar.f11110f != fzaVar4) {
                                                            }
                                                        }
                                                    }
                                                }
                                                return Boolean.FALSE;
                                            }
                                        }
                                    }
                                    isEmpty2 = true;
                                    if (!isEmpty2) {
                                        list = cf.z;
                                        if (list.isEmpty()) {
                                        }
                                        list2 = fzaVar4.f17685e;
                                        fza ba3 = ffb.ba((fza) list2.get(i), Boolean.TRUE, true);
                                        it = list2.iterator();
                                        while (it.hasNext()) {
                                        }
                                        c2 = ghm.c(hedVar, ba3);
                                        if (c2 != null) {
                                            fon fonVar2 = (fon) i2.f18978b;
                                            it2 = list2.iterator();
                                            while (it2.hasNext()) {
                                            }
                                            exwVar = new exw(fzaVar4, fzaVar4, true);
                                            if (linkedList.contains(exwVar)) {
                                            }
                                        }
                                        while (r9.hasNext()) {
                                        }
                                        return Boolean.FALSE;
                                    }
                                    continue;
                                }
                            }
                        }
                        isEmpty = true;
                        if (isEmpty) {
                        }
                    }
                }
            }
        }
        return Boolean.TRUE;
    }

    public elz t() {
        if ("".isEmpty()) {
            return new elz((String) this.i, ((Long) this.f15121f).longValue(), (deh) this.f15122g);
        }
        throw new IllegalStateException("Missing required properties:".concat(""));
    }

    public void u(String str, double d2, double d3) {
        ArrayList arrayList = (ArrayList) this.f15121f;
        ArrayList arrayList2 = (ArrayList) this.f15122g;
        ArrayList arrayList3 = (ArrayList) this.i;
        int i = 0;
        while (i < arrayList3.size()) {
            double doubleValue = ((Double) arrayList2.get(i)).doubleValue();
            double doubleValue2 = ((Double) arrayList.get(i)).doubleValue();
            if (d2 < doubleValue || (doubleValue == d2 && d3 < doubleValue2)) {
                break;
            } else {
                i++;
            }
        }
        arrayList3.add(i, str);
        arrayList2.add(i, Double.valueOf(d2));
        arrayList.add(i, Double.valueOf(d3));
    }

    public void v(dtn dtnVar) {
        cef cefVar = (cef) this.f15122g;
        if (cefVar != null) {
            cefVar.run();
        }
        cef cefVar2 = new cef((ajs) this.i, dtnVar);
        this.f15122g = cefVar2;
        ((Handler) this.f15121f).postAtFrontOfQueue(cefVar2);
    }

    @Override // g.bmm
    public void w(czh czhVar, Throwable th) {
        fyl.e((btp) this.i, 1301, th);
    }

    /* JADX WARN: Removed duplicated region for block: B:255:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0251 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public fza x(eys eysVar, gcv gcvVar, ftm ftmVar) {
        acq acqVar;
        bei beiVar;
        fza fzaVar;
        ArrayList arrayList;
        cab cabVar;
        fza fzaVar2;
        fza fzaVar3;
        gxv gxvVar;
        fza fzaVar4;
        fza fzaVar5;
        fza fzaVar6;
        BitSet bitSet;
        eek s;
        boolean z;
        cab cabVar2;
        boolean z2;
        boolean booleanValue;
        Iterator it;
        boolean z3;
        gcv gcvVar2 = gcvVar;
        ArrayList arrayList2 = eysVar.f16387g;
        acq acqVar2 = acq.bh;
        hed hedVar = (hed) this.i;
        bei beiVar2 = (bei) this.f15121f;
        fon fonVar = beiVar2.f11371b;
        acq acqVar3 = acq.at;
        fza fzaVar7 = gcvVar2.f17902c;
        fza fzaVar8 = gcvVar2.f17903d;
        HashSet g2 = gcvVar2.g();
        ArrayList arrayList3 = new ArrayList(g2.size());
        fza ca = ffb.ca(fzaVar7);
        if (ca != null && g2.remove(ca)) {
            arrayList3.add(ca);
        }
        if (g2.remove(fzaVar7)) {
            arrayList3.add(fzaVar7);
        }
        if (g2.remove(fzaVar8)) {
            arrayList3.add(fzaVar8);
        }
        arrayList3.addAll(g2);
        Iterator it2 = arrayList3.iterator();
        while (true) {
            if (!it2.hasNext()) {
                acqVar = acqVar2;
                beiVar = beiVar2;
                fzaVar = fzaVar8;
                arrayList = arrayList3;
                cabVar = null;
                break;
            }
            fza fzaVar9 = (fza) it2.next();
            if (!fzaVar9.l.j(acqVar2) && (s = ffb.s(fzaVar9)) != null) {
                Iterator it3 = it2;
                if (s.ah == hay.IF) {
                    java.util.List e2 = fzaVar9.l.e(acqVar3);
                    if (e2.isEmpty() || e2.get(0) == gcvVar2) {
                        fza fzaVar10 = gcvVar2.f17902c;
                        if (fzaVar9 == fzaVar8 || (!(fzaVar10.ac.isEmpty() && acw.ak(fzaVar10.f17684d, fzaVar9)) && fzaVar8.ac.isEmpty() && acw.ak(fzaVar8.f17685e, fzaVar9))) {
                            arrayList = arrayList3;
                            z = true;
                        } else {
                            arrayList = arrayList3;
                            z = false;
                        }
                        cab cabVar3 = new cab(eysVar, gcvVar2, fzaVar9, z);
                        boolean z4 = z;
                        if (fzaVar9 == fzaVar10 || z4) {
                            acqVar = acqVar2;
                            beiVar = beiVar2;
                            fzaVar = fzaVar8;
                        } else {
                            if (fzaVar10 == fzaVar9 && fzaVar10.ac.isEmpty()) {
                                acqVar = acqVar2;
                                fzaVar = fzaVar8;
                            } else {
                                if (fzaVar10.ac.isEmpty()) {
                                    acqVar = acqVar2;
                                    if (fzaVar10.z.size() == 1) {
                                        fza ca2 = ffb.ca(fzaVar10);
                                        while (ca2 != null && ca2 != fzaVar9) {
                                            fzaVar = fzaVar8;
                                            if (ca2.z.size() >= 2 || ca2.f17685e.size() != 1 || !ca2.ac.isEmpty()) {
                                                break;
                                            }
                                            ca2 = ffb.ca(ca2);
                                            fzaVar8 = fzaVar;
                                        }
                                        fzaVar = fzaVar8;
                                        if (fzaVar9.f17685e.contains(fzaVar10)) {
                                            cabVar3.i = fzaVar10;
                                            ArrayList arrayList4 = fzaVar10.ac;
                                            if (!arrayList4.isEmpty()) {
                                                eii eiiVar = cabVar3.aa;
                                                if (eiiVar != null) {
                                                    ArrayList i = eiiVar.i();
                                                    if (!i.isEmpty()) {
                                                        int size = arrayList4.size();
                                                        int i2 = 0;
                                                        while (i2 < size) {
                                                            cabVar2 = cabVar3;
                                                            gks gksVar = ((eek) arrayList4.get(i2)).ai;
                                                            if (gksVar == null) {
                                                                beiVar = beiVar2;
                                                            } else {
                                                                beiVar = beiVar2;
                                                                if (gksVar.f18326a.f20178d.size() <= 1) {
                                                                    int i3 = i2 + 1;
                                                                    boolean z5 = false;
                                                                    while (i3 < size) {
                                                                        int i4 = i3;
                                                                        java.util.List list = ((eek) arrayList4.get(i2)).aj;
                                                                        if (list.size() == 0 ? false : ack.k(list, gksVar)) {
                                                                            z5 = true;
                                                                        }
                                                                        i3 = i4 + 1;
                                                                    }
                                                                    if (!z5 && ack.k(i, gksVar)) {
                                                                        z5 = true;
                                                                    }
                                                                    if (z5) {
                                                                        beiVar2 = beiVar;
                                                                        cabVar3 = cabVar2;
                                                                        i2 = i3;
                                                                    }
                                                                }
                                                            }
                                                            z2 = false;
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            beiVar = beiVar2;
                                        }
                                        beiVar = beiVar2;
                                        cabVar2 = cabVar3;
                                        z2 = false;
                                        if (z2 && hedVar.bj(fzaVar9).size() >= 2) {
                                            it = fzaVar9.z.iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    z3 = true;
                                                    break;
                                                }
                                                java.util.List bj = hedVar.bj((fza) it.next());
                                                bj.remove(gcvVar2);
                                                if (!bj.isEmpty()) {
                                                    z3 = false;
                                                    break;
                                                }
                                            }
                                            if (z3) {
                                                z2 = false;
                                            }
                                        }
                                        if (z2) {
                                            ArrayList f2 = gcvVar2.f();
                                            if (f2.size() >= 2) {
                                                Optional findFirst = Collection.b.stream(f2).filter(new dxx(fzaVar9, 3)).findFirst();
                                                if (findFirst.isEmpty()) {
                                                    throw new gck("Not found exit edge by exit block: " + fzaVar9);
                                                }
                                                fza cf = ffb.cf(((exw) findFirst.get()).f16344b);
                                                ArrayList arrayList5 = cf.ac;
                                                if (arrayList5.size() != 1 || ((eek) arrayList5.get(0)).ah != hay.RETURN) {
                                                    booleanValue = s(cf, gcvVar2).booleanValue();
                                                    if (!booleanValue) {
                                                        z2 = false;
                                                    }
                                                }
                                            }
                                            booleanValue = true;
                                            if (!booleanValue) {
                                            }
                                        }
                                        if (z2) {
                                            cabVar = cabVar2;
                                            break;
                                        }
                                        it2 = it3;
                                        arrayList3 = arrayList;
                                        acqVar2 = acqVar;
                                        fzaVar8 = fzaVar;
                                        beiVar2 = beiVar;
                                    }
                                } else {
                                    acqVar = acqVar2;
                                }
                                fzaVar = fzaVar8;
                                if (fzaVar9.f17685e.contains(fzaVar10)) {
                                }
                                beiVar = beiVar2;
                                cabVar2 = cabVar3;
                                z2 = false;
                                if (z2) {
                                    it = fzaVar9.z.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                        }
                                    }
                                    if (z3) {
                                    }
                                }
                                if (z2) {
                                }
                                if (z2) {
                                }
                            }
                            beiVar = beiVar2;
                        }
                        cabVar2 = cabVar3;
                        z2 = true;
                        if (z2) {
                        }
                        if (z2) {
                        }
                        if (z2) {
                        }
                    }
                }
                it2 = it3;
            }
        }
        if (cabVar == null) {
            cab cabVar4 = new cab(eysVar, gcvVar2, null, false);
            arrayList2.add(cabVar4);
            fzaVar7.u(acqVar3);
            fonVar.f17143b.clear(fzaVar7.x);
            ftmVar.e(cabVar4);
            ArrayList f3 = gcvVar2.f();
            if (f3.size() == 1) {
                exw exwVar = (exw) f3.get(0);
                fza fzaVar11 = exwVar.f16344b;
                if (!ab(ftmVar, gcvVar2, fzaVar11, exwVar.f16343a, exwVar) || (fzaVar6 = ffb.ca(fzaVar11)) == null) {
                    fzaVar6 = null;
                } else {
                    ftmVar.c(fzaVar6);
                }
            } else {
                Iterator it4 = f3.iterator();
                loop3: while (true) {
                    if (!it4.hasNext()) {
                        fzaVar6 = null;
                        break;
                    }
                    fza fzaVar12 = ((exw) it4.next()).f16344b;
                    if (fzaVar12.f17685e.size() > 1) {
                        bitSet = new BitSet();
                        bitSet.set(fzaVar12.x);
                    } else {
                        bitSet = fzaVar12.i;
                    }
                    java.util.List<fza> bj2 = ffb.bj(hedVar, bitSet);
                    fza fzaVar13 = hedVar.ad;
                    if (bj2.contains(fzaVar13)) {
                        bj2.remove(fzaVar13);
                        bj2.add(fzaVar13);
                    }
                    for (fza fzaVar14 : bj2) {
                        if (ffb.ac(fzaVar12, fzaVar14)) {
                            if (s(fzaVar14, gcvVar2).booleanValue()) {
                                fzaVar6 = fzaVar14;
                                break loop3;
                            }
                        } else if (fzaVar14.l.g(csv.LOOP_START) && s(fzaVar12, gcvVar2).booleanValue()) {
                            fzaVar6 = fzaVar12;
                            break loop3;
                        }
                    }
                }
                ftmVar.c(fzaVar6);
                if (fzaVar6 != null && fzaVar6 != hedVar.ad) {
                    for (fza fzaVar15 : fzaVar6.f17685e) {
                        Iterator it5 = gcvVar2.f().iterator();
                        while (it5.hasNext()) {
                            exw exwVar2 = (exw) it5.next();
                            fza fzaVar16 = exwVar2.f16344b;
                            if (ffb.ac(fzaVar16, fzaVar15) || fzaVar16 == fzaVar6) {
                                ab(ftmVar, gcvVar2, fzaVar6, exwVar2.f16343a, new exw(fzaVar15, fzaVar6, false));
                            }
                        }
                    }
                }
            }
            eys h = beiVar.h(fzaVar7);
            fza fzaVar17 = fzaVar;
            if (!gs.az(fzaVar17, h) && !fzaVar17.l.j(acqVar)) {
                if (hedVar.ap.size() != 0) {
                    Iterator it6 = hedVar.ap.iterator();
                    while (it6.hasNext()) {
                        if (((aea) it6.next()).f10080c.contains(fzaVar17)) {
                            break;
                        }
                    }
                }
                h.f16387g.add(fzaVar17);
            }
            cabVar4.y = h;
            if (fzaVar6 == null) {
                fza ca3 = ffb.ca(fzaVar17);
                fzaVar6 = gs.az(ca3, h) ? null : ca3;
            }
            ftmVar.d();
            fzaVar7.o(acqVar3, gcvVar2);
            l(gcvVar2);
            return fzaVar6;
        }
        ftm ftmVar2 = ftmVar;
        fza fzaVar18 = fzaVar;
        bei beiVar3 = beiVar;
        arrayList2.add(cabVar);
        bjk bjkVar = ftmVar2.f17389b.f11878b;
        ftmVar2.e(cabVar);
        gxv c2 = ghm.c(((ghm) this.f15122g).f18165a, cabVar.z);
        gxv i5 = ghm.i(c2);
        if (i5 != null) {
            c2 = i5;
        }
        ghm.g(c2);
        if (!gcvVar2.f17904e.contains((fza) c2.f18979c)) {
            c2 = gxv.j(c2);
        }
        gxv gxvVar2 = c2;
        fza fzaVar19 = (fza) gxvVar2.f18981e;
        fza fzaVar20 = (fza) gxvVar2.f18979c;
        fon fonVar2 = (fon) gxvVar2.f18978b;
        cabVar.aa = (eii) gxvVar2.h;
        cabVar.f15618ab = fonVar2.e();
        fonVar2.forEach(new esk(17));
        ArrayList arrayList6 = arrayList;
        arrayList6.removeAll(fonVar2.e());
        if (!arrayList6.isEmpty()) {
            java.util.List list2 = cabVar.f15618ab;
            Iterator it7 = gcvVar2.f().iterator();
            while (true) {
                if (!it7.hasNext()) {
                    break;
                }
                exw exwVar3 = (exw) it7.next();
                if (list2.contains(exwVar3.f16343a)) {
                    fza cf2 = ffb.cf(exwVar3.f16344b);
                    for (fza fzaVar21 : cf2.f17685e) {
                        Iterator it8 = gcvVar2.f().iterator();
                        while (it8.hasNext()) {
                            exw exwVar4 = (exw) it8.next();
                            fza fzaVar22 = exwVar4.f16343a;
                            fza fzaVar23 = exwVar4.f16344b;
                            if (list2.contains(fzaVar22) || !(ffb.ac(fzaVar23, fzaVar21) || fzaVar23 == cf2)) {
                                gcvVar2 = gcvVar;
                                ftmVar2 = ftmVar;
                                fzaVar3 = fzaVar21;
                                gxvVar = gxvVar2;
                                fzaVar4 = fzaVar20;
                                fzaVar5 = cf2;
                            } else {
                                gcvVar2 = gcvVar;
                                fzaVar3 = fzaVar21;
                                gxvVar = gxvVar2;
                                fzaVar4 = fzaVar20;
                                ftmVar2 = ftmVar;
                                fzaVar5 = cf2;
                                ab(ftmVar2, gcvVar2, fzaVar5, exwVar4.f16343a, new exw(fzaVar21, cf2, false));
                            }
                            cf2 = fzaVar5;
                            fzaVar20 = fzaVar4;
                            gxvVar2 = gxvVar;
                            fzaVar21 = fzaVar3;
                        }
                        gxvVar2 = gxvVar2;
                    }
                }
            }
        }
        gxv gxvVar3 = gxvVar2;
        fza fzaVar24 = fzaVar20;
        if (cabVar.f12536g) {
            if (fzaVar24 != fzaVar18 && fzaVar24 != fzaVar7) {
                fzaVar19 = fzaVar24;
            }
            fzaVar2 = ffb.cf(fzaVar19);
            fzaVar7.u(acqVar3);
            csv csvVar = csv.ADDED_TO_REGION;
            fzaVar18.w(csvVar);
            ftmVar2.c(fzaVar18);
            fonVar.f17143b.clear(fzaVar7.x);
            cabVar.y = beiVar3.h(fzaVar7);
            fzaVar7.o(acqVar3, gcvVar2);
            fzaVar18.v(csvVar);
        } else {
            if (bjkVar != null && fzaVar19 != null) {
                if (fzaVar19.l.g(csv.LOOP_START) && !fzaVar19.l.e(acqVar3).contains(gcvVar2) && gs.az(fzaVar19, bjkVar)) {
                    fzaVar19 = null;
                }
            }
            ftmVar2.c(fzaVar19);
            eys eysVar2 = Objects.equals(fzaVar24, fzaVar7) ? new eys(cabVar) : beiVar3.h(fzaVar24);
            fza l = gxvVar3.l();
            if (fzaVar7 != l) {
                HashSet x = ffb.x(fzaVar7, l);
                x.remove(l);
                Iterator it9 = x.iterator();
                while (it9.hasNext()) {
                    fza fzaVar25 = (fza) it9.next();
                    if (fzaVar25.ac.isEmpty()) {
                        if (!fzaVar25.l.g(csv.ADDED_TO_REGION) && !gs.az(fzaVar25, eysVar2)) {
                            eysVar2.h(fzaVar25);
                        }
                    }
                }
            }
            cabVar.y = eysVar2;
            fzaVar2 = fzaVar19;
        }
        ftmVar2.d();
        l(gcvVar2);
        return fzaVar2;
    }

    public boolean y(int i, gri griVar, brh brhVar) {
        dcu dcuVar = (dcu) this.f15121f;
        fol[] folVarArr = brhVar.ch;
        int[] iArr = brhVar.cm;
        dcuVar.f13985d = folVarArr[0];
        dcuVar.f13988g = folVarArr[1];
        dcuVar.i = brhVar.eb();
        dcuVar.f13983b = brhVar.di();
        dcuVar.f13987f = false;
        dcuVar.h = i;
        fol folVar = dcuVar.f13985d;
        fol folVar2 = fol.MATCH_CONSTRAINT;
        boolean z = folVar == folVar2;
        boolean z2 = dcuVar.f13988g == folVar2;
        boolean z3 = z && brhVar.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        boolean z4 = z2 && brhVar.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (z3 && iArr[0] == 4) {
            dcuVar.f13985d = fol.FIXED;
        }
        if (z4 && iArr[1] == 4) {
            dcuVar.f13988g = fol.FIXED;
        }
        griVar.j(brhVar, dcuVar);
        brhVar.ed(dcuVar.f13984c);
        brhVar.dj(dcuVar.f13986e);
        brhVar.cx = dcuVar.f13982a;
        brhVar.ee(dcuVar.j);
        dcuVar.h = 0;
        return dcuVar.f13987f;
    }

    public Drawable z(int i) {
        int resourceId;
        Drawable x;
        if (!((TypedArray) this.f15121f).hasValue(i) || (resourceId = ((TypedArray) this.f15121f).getResourceId(i, 0)) == 0) {
            return null;
        }
        cfl f2 = cfl.f();
        Context context = (Context) this.i;
        synchronized (f2) {
            x = f2.f12790c.x(context, resourceId, true);
        }
        return x;
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public int zza() {
        return ((long[]) this.f15122g).length;
    }

    @Override // com.google.android.gms.internal.ads.zzdtv
    public /* bridge */ /* synthetic */ zzdtv zza(zzbkq zzbkqVar) {
        zzbkqVar.getClass();
        this.f15122g = zzbkqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    /* renamed from: zza, reason: collision with other method in class */
    public void mo3zza() {
        zzfko zzfkoVar;
        agd.e("loadNewJavascriptEngine (failure): Trying to acquire lock");
        synchronized (((zzbnu) this.f15122g).f4890d) {
            try {
                agd.e("loadNewJavascriptEngine (failure): Lock acquired");
                ((zzbnu) this.f15122g).f4887a = 1;
                agd.e("Failed loading new engine. Marking new engine destroyable.");
                ((zzbnt) this.i).zzb();
                if (((Boolean) zzbeg.zzd.zze()).booleanValue() && (zzfkoVar = ((zzbnu) this.f15122g).f4889c) != null) {
                    zzfka zzfkaVar = (zzfka) this.f15121f;
                    zzfkaVar.zzc("Failed loading new engine");
                    zzfkaVar.zzg(false);
                    zzfkoVar.zzb(zzfkaVar.zzm());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        agd.e("loadNewJavascriptEngine (failure): Lock released");
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public long zzb(int i) {
        long[] jArr = (long[]) this.f15122g;
        zzdb.zzd(i >= 0);
        zzdb.zzd(i < jArr.length);
        return jArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzdtv
    public /* bridge */ /* synthetic */ zzdtv zzb(Context context) {
        context.getClass();
        this.f15121f = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtv
    public zzdtw zzc() {
        zzhgf.zzc((Context) this.f15121f, Context.class);
        zzhgf.zzc((zzbkq) this.f15122g, zzbkq.class);
        return new gud((bxr) this.i, (Context) this.f15121f, (zzbkq) this.f15122g);
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public java.util.List zzc(long j) {
        java.util.List list = (java.util.List) this.i;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            long[] jArr = (long[]) this.f15121f;
            int i2 = i + i;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                zzalr zzalrVar = (zzalr) list.get(i);
                zzct zzctVar = zzalrVar.zza;
                if (zzctVar.zze == -3.4028235E38f) {
                    arrayList2.add(zzalrVar);
                } else {
                    arrayList.add(zzctVar);
                }
            }
        }
        Collections.sort(arrayList2, new java.util.Comparator() { // from class: com.google.android.gms.internal.ads.zzamb
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((zzalr) obj).zzb, ((zzalr) obj2).zzb);
            }
        });
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            zzcr zzb = ((zzalr) arrayList2.get(i3)).zza.zzb();
            zzb.zze((-1) - i3, 1);
            arrayList.add(zzb.zzp());
        }
        return arrayList;
    }
}
