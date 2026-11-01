package g;

import android.content.Context;
import android.graphics.PointF;
import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class ao implements eya, fky, cce, aii, gtx {

    /* renamed from: a, reason: collision with root package name */
    public static final ao f10542a;
    public static final ao ad;
    public static final ao ae;

    /* renamed from: d, reason: collision with root package name */
    public static final ao f10546d;
    public static final ao i;
    public static final ao l;
    public static final ao m;
    public static final ao q;
    public static final ao s;
    public static final ao x;
    public final /* synthetic */ int ag;
    public static final ao y = new ao(1);
    public static final ao k = new ao(2);
    public static final ao z = new ao(4);

    /* renamed from: g, reason: collision with root package name */
    public static final ao f10549g = new ao(5);

    /* renamed from: b, reason: collision with root package name */
    public static final ao f10544b = new ao(6);
    public static final /* synthetic */ ao ac = new ao(7);
    public static final /* synthetic */ ao t = new ao(8);
    public static final /* synthetic */ ao p = new ao(9);

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ ao f10545c = new ao(10);
    public static final /* synthetic */ ao n = new ao(11);

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ ao f10548f = new ao(12);
    public static final /* synthetic */ ao aa = new ao(13);
    public static final /* synthetic */ ao v = new ao(14);

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ ao f10547e = new ao(15);
    public static final /* synthetic */ ao u = new ao(16);

    /* renamed from: ab, reason: collision with root package name */
    public static final /* synthetic */ ao f10543ab = new ao(17);
    public static final /* synthetic */ ao w = new ao(18);
    public static final /* synthetic */ ao j = new ao(19);
    public static final /* synthetic */ ao h = new ao(20);
    public static final /* synthetic */ ao r = new ao(21);
    public static final /* synthetic */ ao o = new ao(22);
    public static final ao af = new ao(23);

    static {
        int i2 = 3;
        q = new ao(i2);
        s = new ao(i2);
        ae = new ao(i2);
        f10546d = new ao(i2);
        f10542a = new ao(i2);
        x = new ao(i2);
        i = new ao(i2);
        m = new ao(i2);
        l = new ao(i2);
        ad = new ao(i2);
    }

    public /* synthetic */ ao(int i2) {
        this.ag = i2;
    }

    public static final bos ah(ao aoVar, String str) {
        bos bosVar = new bos(str);
        bos.f11927e.put(str, bosVar);
        return bosVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ef, code lost:
    
        if (r2.contains(r1) == false) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static aeh ai(Context context, qo qoVar) {
        boolean z2;
        Context applicationContext;
        String str;
        int i2;
        int i3;
        String str2;
        String str3 = qoVar.f19871f;
        Set set = qoVar.l;
        List unmodifiableList = !set.isEmpty() ? Collections.unmodifiableList(new ArrayList(set)) : null;
        bah bahVar = bza.l().h;
        mx mxVar = cbv.f12612a.f12615d;
        Set set2 = qoVar.m;
        String j2 = mx.j(context);
        if (!set2.contains(j2)) {
            bahVar.getClass();
            if (!new ArrayList(bahVar.f11160b).contains(j2)) {
                z2 = false;
                Bundle bundle = qoVar.f19868c.getBundle(AdMobAdapter.class.getName());
                applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    String packageName = applicationContext.getPackageName();
                    StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                    while (true) {
                        i3 = i2 + 1;
                        if (i3 >= stackTrace.length) {
                            str2 = null;
                            break;
                        }
                        StackTraceElement stackTraceElement = stackTrace[i2];
                        String className = stackTraceElement.getClassName();
                        i2 = ("loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) && (mx.f19685f.equalsIgnoreCase(className) || mx.f19681b.equalsIgnoreCase(className) || mx.f19682c.equalsIgnoreCase(className) || mx.f19683d.equalsIgnoreCase(className) || mx.f19686g.equalsIgnoreCase(className) || mx.f19680a.equalsIgnoreCase(className))) ? 0 : i3;
                    }
                    str2 = stackTrace[i3].getClassName();
                    if (packageName != null) {
                        StringTokenizer stringTokenizer = new StringTokenizer(packageName, ".");
                        StringBuilder sb = new StringBuilder();
                        if (stringTokenizer.hasMoreElements()) {
                            sb.append(stringTokenizer.nextToken());
                            for (int i4 = 2; i4 > 0 && stringTokenizer.hasMoreElements(); i4--) {
                                sb.append(".");
                                sb.append(stringTokenizer.nextToken());
                            }
                            packageName = sb.toString();
                        }
                        if (str2 != null) {
                        }
                    }
                    str2 = null;
                    str = str2;
                } else {
                    str = null;
                }
                boolean z3 = qoVar.k;
                bah bahVar2 = bza.l().h;
                int i5 = qoVar.f19872g;
                bahVar2.getClass();
                return new aeh(8, -1L, bundle, -1, unmodifiableList, z2, Math.max(i5, -1), false, null, null, null, str3, qoVar.f19868c, qoVar.f19866a, Collections.unmodifiableList(new ArrayList(qoVar.i)), qoVar.f19870e, str, z3, null, -1, (String) Collections.max(Arrays.asList(null, ""), new aqn(19)), new ArrayList(qoVar.j), qoVar.f19869d, qoVar.f19867b, bahVar2.f11161c.b(), qoVar.h);
            }
        }
        z2 = true;
        Bundle bundle2 = qoVar.f19868c.getBundle(AdMobAdapter.class.getName());
        applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
        }
        boolean z32 = qoVar.k;
        bah bahVar22 = bza.l().h;
        int i52 = qoVar.f19872g;
        bahVar22.getClass();
        return new aeh(8, -1L, bundle2, -1, unmodifiableList, z2, Math.max(i52, -1), false, null, null, null, str3, qoVar.f19868c, qoVar.f19866a, Collections.unmodifiableList(new ArrayList(qoVar.i)), qoVar.f19870e, str, z32, null, -1, (String) Collections.max(Arrays.asList(null, ""), new aqn(19)), new ArrayList(qoVar.j), qoVar.f19869d, qoVar.f19867b, bahVar22.f11161c.b(), qoVar.h);
    }

    public List aj() {
        return Collections.EMPTY_LIST;
    }

    @Override // g.eya
    public Object ak(Object obj) {
        return (sz) obj;
    }

    public synchronized bos al(String str) {
        bos bosVar;
        String str2;
        try {
            bff.p(str, "javaName");
            LinkedHashMap linkedHashMap = bos.f11927e;
            bosVar = (bos) linkedHashMap.get(str);
            if (bosVar == null) {
                if (dmc.bw(str, "TLS_", false)) {
                    String substring = str.substring(4);
                    bff.e(substring, "this as java.lang.String).substring(startIndex)");
                    str2 = "SSL_".concat(substring);
                } else if (dmc.bw(str, "SSL_", false)) {
                    String substring2 = str.substring(4);
                    bff.e(substring2, "this as java.lang.String).substring(startIndex)");
                    str2 = "TLS_".concat(substring2);
                } else {
                    str2 = str;
                }
                bosVar = (bos) linkedHashMap.get(str2);
                if (bosVar == null) {
                    bosVar = new bos(str);
                }
                linkedHashMap.put(str, bosVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return bosVar;
    }

    public List am(Executor executor) {
        return Collections.singletonList(new efv(executor));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.cce
    public Object an(JsonReader jsonReader, float f2) {
        char c2;
        char c3;
        boolean z2;
        int i2;
        int i3;
        ArrayList arrayList = null;
        String str = null;
        switch (this.ag) {
            case 5:
                if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                    jsonReader.beginArray();
                }
                jsonReader.beginObject();
                ArrayList arrayList2 = null;
                ArrayList arrayList3 = null;
                boolean z3 = false;
                while (jsonReader.hasNext()) {
                    String nextName = jsonReader.nextName();
                    nextName.getClass();
                    switch (nextName.hashCode()) {
                        case 99:
                            if (nextName.equals("c")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 105:
                            if (nextName.equals("i")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 111:
                            if (nextName.equals("o")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 118:
                            if (nextName.equals(ada.COLUMN_VALUE)) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    switch (c2) {
                        case 0:
                            z3 = jsonReader.nextBoolean();
                            break;
                        case 1:
                            arrayList2 = cux.ap(jsonReader, f2);
                            break;
                        case 2:
                            arrayList3 = cux.ap(jsonReader, f2);
                            break;
                        case 3:
                            arrayList = cux.ap(jsonReader, f2);
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                jsonReader.endObject();
                if (jsonReader.peek() == JsonToken.END_ARRAY) {
                    jsonReader.endArray();
                }
                if (arrayList == null || arrayList2 == null || arrayList3 == null) {
                    throw new IllegalArgumentException("Shape data was missing information.");
                }
                if (arrayList.isEmpty()) {
                    return new up(new PointF(), false, Collections.EMPTY_LIST);
                }
                int size = arrayList.size();
                PointF pointF = (PointF) arrayList.get(0);
                ArrayList arrayList4 = new ArrayList(size);
                for (int i4 = 1; i4 < size; i4++) {
                    PointF pointF2 = (PointF) arrayList.get(i4);
                    int i5 = i4 - 1;
                    arrayList4.add(new ggh(din.b((PointF) arrayList.get(i5), (PointF) arrayList3.get(i5)), din.b(pointF2, (PointF) arrayList2.get(i4)), pointF2));
                }
                if (z3) {
                    PointF pointF3 = (PointF) arrayList.get(0);
                    int i6 = size - 1;
                    arrayList4.add(new ggh(din.b((PointF) arrayList.get(i6), (PointF) arrayList3.get(i6)), din.b(pointF3, (PointF) arrayList2.get(0)), pointF3));
                }
                return new up(pointF, z3, arrayList4);
            default:
                cxw cxwVar = cxw.ox;
                jsonReader.beginObject();
                String str2 = null;
                PointF pointF4 = null;
                PointF pointF5 = null;
                int i7 = 0;
                int i8 = 0;
                boolean z4 = true;
                float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float f5 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                int i9 = 0;
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    nextName2.getClass();
                    switch (nextName2.hashCode()) {
                        case 102:
                            if (nextName2.equals("f")) {
                                c3 = 0;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 106:
                            if (nextName2.equals("j")) {
                                c3 = 1;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 115:
                            if (nextName2.equals("s")) {
                                c3 = 2;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 116:
                            if (nextName2.equals("t")) {
                                c3 = 3;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3261:
                            if (nextName2.equals("fc")) {
                                c3 = 4;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3452:
                            if (nextName2.equals("lh")) {
                                c3 = 5;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3463:
                            if (nextName2.equals("ls")) {
                                c3 = 6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3543:
                            if (nextName2.equals("of")) {
                                c3 = 7;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3587:
                            if (nextName2.equals("ps")) {
                                c3 = '\b';
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3664:
                            if (nextName2.equals("sc")) {
                                c3 = '\t';
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3684:
                            if (nextName2.equals("sw")) {
                                c3 = '\n';
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3687:
                            if (nextName2.equals("sz")) {
                                c3 = 11;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3710:
                            if (nextName2.equals("tr")) {
                                c3 = '\f';
                                break;
                            }
                            c3 = 65535;
                            break;
                        default:
                            c3 = 65535;
                            break;
                    }
                    switch (c3) {
                        case 0:
                            z2 = z4;
                            str2 = jsonReader.nextString();
                            z4 = z2;
                            break;
                        case 1:
                            z2 = z4;
                            i2 = i8;
                            int nextInt = jsonReader.nextInt();
                            cxw cxwVar2 = cxw.ox;
                            cxwVar = (nextInt > cxwVar2.ordinal() || nextInt < 0) ? cxwVar2 : cxw.values()[nextInt];
                            i8 = i2;
                            z4 = z2;
                            break;
                        case 2:
                            z2 = z4;
                            f3 = (float) jsonReader.nextDouble();
                            z4 = z2;
                            break;
                        case 3:
                            z2 = z4;
                            str = jsonReader.nextString();
                            z4 = z2;
                            break;
                        case 4:
                            z2 = z4;
                            i7 = cux.ay(jsonReader);
                            z4 = z2;
                            break;
                        case 5:
                            z2 = z4;
                            f4 = (float) jsonReader.nextDouble();
                            z4 = z2;
                            break;
                        case 6:
                            z2 = z4;
                            f5 = (float) jsonReader.nextDouble();
                            z4 = z2;
                            break;
                        case 7:
                            z4 = jsonReader.nextBoolean();
                            i8 = i8;
                            break;
                        case '\b':
                            z2 = z4;
                            jsonReader.beginArray();
                            i2 = i8;
                            pointF4 = new PointF(((float) jsonReader.nextDouble()) * f2, ((float) jsonReader.nextDouble()) * f2);
                            jsonReader.endArray();
                            i8 = i2;
                            z4 = z2;
                            break;
                        case '\t':
                            i8 = cux.ay(jsonReader);
                            break;
                        case '\n':
                            i3 = i8;
                            z2 = z4;
                            f6 = (float) jsonReader.nextDouble();
                            i8 = i3;
                            z4 = z2;
                            break;
                        case 11:
                            jsonReader.beginArray();
                            i3 = i8;
                            z2 = z4;
                            pointF5 = new PointF(((float) jsonReader.nextDouble()) * f2, ((float) jsonReader.nextDouble()) * f2);
                            jsonReader.endArray();
                            i8 = i3;
                            z4 = z2;
                            break;
                        case '\f':
                            i9 = jsonReader.nextInt();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                boolean z5 = z4;
                int i10 = i8;
                jsonReader.endObject();
                bil bilVar = new bil();
                bilVar.f11657f = str;
                bilVar.j = str2;
                bilVar.l = f3;
                bilVar.f11654c = cxwVar;
                bilVar.f11656e = i9;
                bilVar.f11658g = f4;
                bilVar.m = f5;
                bilVar.f11652a = i7;
                bilVar.i = i10;
                bilVar.k = f6;
                bilVar.f11653b = z5;
                bilVar.f11655d = pointF4;
                bilVar.h = pointF5;
                return bilVar;
        }
    }

    @Override // g.gtx
    public Object ao() {
        return new ConcurrentSkipListMap();
    }

    @Override // g.aii
    public Object zza() {
        switch (this.ag) {
            case 8:
                List list = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l2 = (Long) biy.k.k();
                l2.getClass();
                return l2;
            case 9:
                List list2 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l3 = (Long) biy.f11675d.k();
                l3.getClass();
                return l3;
            case 10:
                List list3 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l4 = (Long) biy.ae.k();
                l4.getClass();
                return l4;
            case 11:
                List list4 = gad.z;
                ((chr) dkm.f14314a.zza()).getClass();
                Long l5 = (Long) chr.f12895a.k();
                l5.getClass();
                return l5;
            case 12:
                List list5 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.y.k()).longValue());
            case 13:
                List list6 = gad.z;
                ((bgt) ((fvz) fdd.f16593a.f16594b.zza())).getClass();
                Boolean bool = (Boolean) bgt.f11542b.k();
                bool.getClass();
                return bool;
            case 14:
                List list7 = gad.z;
                ((ajc) ((abl) bnr.f11879a.f11880b.zza())).getClass();
                Boolean bool2 = (Boolean) ajc.f10299a.k();
                bool2.getClass();
                return bool2;
            case 15:
                List list8 = gad.z;
                ((dce) ((gbh) ear.f15205a.f15206b.zza())).getClass();
                Boolean bool3 = (Boolean) dce.f13951a.k();
                bool3.getClass();
                return bool3;
            case 16:
                List list9 = gad.z;
                ((elo) ((zn) byj.f12450a.f12451b.zza())).getClass();
                Boolean bool4 = (Boolean) elo.f15771a.k();
                bool4.getClass();
                return bool4;
            case 17:
                List list10 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool5 = (Boolean) hcx.m.k();
                bool5.getClass();
                return bool5;
            case 18:
                List list11 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.ag.k()).longValue());
            case 19:
                List list12 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool6 = (Boolean) hcx.f19245g.k();
                bool6.getClass();
                return bool6;
            case 20:
                List list13 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool7 = (Boolean) hcx.k.k();
                bool7.getClass();
                return bool7;
            case 21:
                List list14 = gad.z;
                ((cyv) ((diz) fsl.f17336a.f17337b.zza())).getClass();
                Boolean bool8 = (Boolean) cyv.f13780a.k();
                bool8.getClass();
                return bool8;
            default:
                List list15 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l6 = (Long) biy.ac.k();
                l6.getClass();
                return l6;
        }
    }
}
