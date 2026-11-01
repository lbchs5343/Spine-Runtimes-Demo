package g;

import android.app.Activity;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.os.Build;
import android.os.Parcel;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.JsonReader;
import android.view.animation.Interpolator;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzbh;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzfwq;
import g.fxe;
import j$.util.Objects;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.ServiceConfigurationError;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class aky {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f10421a = true;

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f10422b;

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f10423c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: d, reason: collision with root package name */
    public static final char[] f10424d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: e, reason: collision with root package name */
    public static final Type[] f10425e = new Type[0];

    public static Type aa(int i, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i >= 0 && i < actualTypeArguments.length) {
            Type type = actualTypeArguments[i];
            return type instanceof WildcardType ? ((WildcardType) type).getUpperBounds()[0] : type;
        }
        StringBuilder z = tn.z(i, "Index ", " not in range [0,");
        z.append(actualTypeArguments.length);
        z.append(") for ");
        z.append(parameterizedType);
        throw new IllegalArgumentException(z.toString());
    }

    public static int ab(dgk dgkVar) {
        if (dgkVar.getIconType() == 1) {
            if ("jd".equals(dgkVar.getId())) {
                return R.drawable.jd;
            }
            if ("tb".equals(dgkVar.getId())) {
                return R.drawable.tb;
            }
            if ("dd".equals(dgkVar.getId())) {
                return R.drawable.dd;
            }
            if ("alipay".equals(dgkVar.getId())) {
                return R.drawable.red_packet;
            }
            if ("faq".equals(dgkVar.getId())) {
                return R.drawable.faq;
            }
        } else if (dgkVar.getIconType() != 2) {
            dgkVar.getIconType();
            return -1;
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static cbc ac(JsonReader jsonReader, cgf cgfVar) {
        String str;
        String str2;
        char c2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        dpa dpaVar;
        char c3;
        char c4;
        char c5;
        String str8;
        char c6;
        String str9;
        Float valueOf = Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        Float valueOf2 = Float.valueOf(1.0f);
        bwd bwdVar = bwd.dq;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.beginObject();
        bwd bwdVar2 = bwdVar;
        String str10 = "UNSET";
        long j = 0;
        long j2 = -1;
        String str11 = null;
        dlz dlzVar = null;
        dpa dpaVar2 = null;
        float f2 = 1.0f;
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        ayj ayjVar = null;
        String str12 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        float f5 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f7 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        boolean z = false;
        aoy aoyVar = null;
        fzn fznVar = null;
        eld eldVar = null;
        cnc cncVar = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            String str13 = "sw";
            dpa dpaVar3 = null;
            String str14 = "sc";
            dpa dpaVar4 = dpaVar2;
            String str15 = "t";
            Float f8 = valueOf;
            String str16 = str10;
            switch (nextName.hashCode()) {
                case -995424086:
                    if (nextName.equals("parent")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -903568142:
                    if (nextName.equals("shapes")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 104:
                    if (nextName.equals("h")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 116:
                    if (nextName.equals("t")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 119:
                    if (nextName.equals("w")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3177:
                    if (nextName.equals("cl")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3233:
                    if (nextName.equals("ef")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3324:
                    if (nextName.equals(LiveConfigKey.HIGH)) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3367:
                    if (nextName.equals("ip")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3432:
                    if (nextName.equals(MediationConstant.ADN_KS)) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3553:
                    if (nextName.equals("op")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3664:
                    if (nextName.equals("sc")) {
                        c2 = '\f';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3669:
                    if (nextName.equals("sh")) {
                        c2 = '\r';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3679:
                    if (nextName.equals("sr")) {
                        c2 = 14;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3681:
                    if (nextName.equals("st")) {
                        c2 = 15;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3684:
                    if (nextName.equals("sw")) {
                        c2 = 16;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3705:
                    if (nextName.equals("tm")) {
                        c2 = 17;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3712:
                    if (nextName.equals("tt")) {
                        c2 = 18;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3717:
                    if (nextName.equals("ty")) {
                        c2 = 19;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 104415:
                    if (nextName.equals("ind")) {
                        c2 = 20;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 108390670:
                    if (nextName.equals("refId")) {
                        c2 = 21;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1441620890:
                    if (nextName.equals("masksProperties")) {
                        c2 = 22;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            String str17 = "a";
            switch (c2) {
                case 0:
                    j2 = jsonReader.nextInt();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 1:
                    str3 = str11;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        dpy z2 = baf.z(jsonReader, cgfVar);
                        if (z2 != null) {
                            arrayList2.add(z2);
                        }
                    }
                    jsonReader.endArray();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    str11 = str3;
                    break;
                case 2:
                    str3 = str11;
                    f6 = (float) (jsonReader.nextDouble() * ebx.h());
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    str11 = str3;
                    break;
                case 3:
                    str3 = str11;
                    jsonReader.beginObject();
                    dlz dlzVar2 = dlzVar;
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.getClass();
                        if (nextName2.equals(str17)) {
                            jsonReader.beginArray();
                            if (jsonReader.hasNext()) {
                                jsonReader.beginObject();
                                dpa dpaVar5 = dpaVar3;
                                while (jsonReader.hasNext()) {
                                    String nextName3 = jsonReader.nextName();
                                    nextName3.getClass();
                                    if (nextName3.equals(str17)) {
                                        jsonReader.beginObject();
                                        Object obj = dpaVar3;
                                        Object obj2 = obj;
                                        Object obj3 = obj2;
                                        Object obj4 = obj3;
                                        while (jsonReader.hasNext()) {
                                            String nextName4 = jsonReader.nextName();
                                            nextName4.getClass();
                                            switch (nextName4.hashCode()) {
                                                case 116:
                                                    if (nextName4.equals(str15)) {
                                                        c3 = 0;
                                                        break;
                                                    }
                                                    c3 = 65535;
                                                    break;
                                                case 3261:
                                                    if (nextName4.equals("fc")) {
                                                        c3 = 1;
                                                        break;
                                                    }
                                                    c3 = 65535;
                                                    break;
                                                case 3664:
                                                    if (nextName4.equals(str14)) {
                                                        c3 = 2;
                                                        break;
                                                    }
                                                    c3 = 65535;
                                                    break;
                                                case 3684:
                                                    if (nextName4.equals(str13)) {
                                                        c3 = 3;
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
                                                    obj4 = bff.am(jsonReader, cgfVar, true);
                                                    break;
                                                case 1:
                                                    obj = bff.t(jsonReader, cgfVar);
                                                    break;
                                                case 2:
                                                    obj2 = bff.t(jsonReader, cgfVar);
                                                    break;
                                                case 3:
                                                    obj3 = bff.am(jsonReader, cgfVar, true);
                                                    break;
                                                default:
                                                    jsonReader.skipValue();
                                                    break;
                                            }
                                        }
                                        jsonReader.endObject();
                                        dpaVar5 = new dpa(obj, obj2, obj3, obj4, 6);
                                    } else {
                                        jsonReader.skipValue();
                                    }
                                }
                                jsonReader.endObject();
                                if (dpaVar5 == null) {
                                    String str18 = str14;
                                    dpaVar = dpaVar3;
                                    str6 = str17;
                                    str7 = str13;
                                    str4 = str18;
                                    str5 = str15;
                                    dpaVar4 = new dpa(dpaVar, dpaVar, dpaVar, dpaVar, 6);
                                } else {
                                    str4 = str14;
                                    str5 = str15;
                                    str6 = str17;
                                    str7 = str13;
                                    dpaVar = dpaVar3;
                                    dpaVar4 = dpaVar5;
                                }
                            } else {
                                str4 = str14;
                                str5 = str15;
                                str6 = str17;
                                str7 = str13;
                                dpaVar = dpaVar3;
                            }
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            jsonReader.endArray();
                            str15 = str5;
                            dpaVar3 = dpaVar;
                            str17 = str6;
                            str13 = str7;
                            str14 = str4;
                        } else if (nextName2.equals(ada.COLUMN_DOMAIN)) {
                            dlzVar2 = new dlz(4, ffb.bc(jsonReader, cgfVar, ebx.h(), ao.f10544b, false));
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    dlzVar = dlzVar2;
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    str11 = str3;
                    break;
                case 4:
                    str3 = str11;
                    f5 = (float) (jsonReader.nextDouble() * ebx.h());
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    str11 = str3;
                    break;
                case 5:
                    str11 = jsonReader.nextString();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 6:
                    jsonReader.beginArray();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName5 = jsonReader.nextName();
                            nextName5.getClass();
                            if (nextName5.equals("nm")) {
                                str8 = str11;
                                arrayList3.add(jsonReader.nextString());
                            } else if (nextName5.equals("ty")) {
                                int nextInt = jsonReader.nextInt();
                                if (nextInt == 29) {
                                    aoyVar = null;
                                    while (jsonReader.hasNext()) {
                                        String nextName6 = jsonReader.nextName();
                                        nextName6.getClass();
                                        if (nextName6.equals("ef")) {
                                            jsonReader.beginArray();
                                            while (jsonReader.hasNext()) {
                                                jsonReader.beginObject();
                                                aoy aoyVar2 = null;
                                                boolean z3 = false;
                                                while (jsonReader.hasNext()) {
                                                    String nextName7 = jsonReader.nextName();
                                                    nextName7.getClass();
                                                    if (nextName7.equals(ada.COLUMN_VALUE)) {
                                                        if (z3) {
                                                            str9 = str11;
                                                            aoyVar2 = new aoy(bff.am(jsonReader, cgfVar, true));
                                                        } else {
                                                            str9 = str11;
                                                            jsonReader.skipValue();
                                                        }
                                                    } else if (nextName7.equals("ty")) {
                                                        z3 = jsonReader.nextInt() == 0;
                                                    } else {
                                                        jsonReader.skipValue();
                                                        str9 = str11;
                                                    }
                                                    str11 = str9;
                                                }
                                                String str19 = str11;
                                                jsonReader.endObject();
                                                if (aoyVar2 != null) {
                                                    aoyVar = aoyVar2;
                                                }
                                                str11 = str19;
                                            }
                                            jsonReader.endArray();
                                        } else {
                                            jsonReader.skipValue();
                                        }
                                    }
                                } else {
                                    str8 = str11;
                                    if (nextInt == 25) {
                                        dlz dlzVar3 = null;
                                        cnc cncVar2 = null;
                                        cnc cncVar3 = null;
                                        cnc cncVar4 = null;
                                        cnc cncVar5 = null;
                                        while (jsonReader.hasNext()) {
                                            String nextName8 = jsonReader.nextName();
                                            nextName8.getClass();
                                            if (nextName8.equals("ef")) {
                                                jsonReader.beginArray();
                                                while (jsonReader.hasNext()) {
                                                    jsonReader.beginObject();
                                                    String str20 = "";
                                                    while (jsonReader.hasNext()) {
                                                        String nextName9 = jsonReader.nextName();
                                                        nextName9.getClass();
                                                        if (nextName9.equals(ada.COLUMN_VALUE)) {
                                                            str20.getClass();
                                                            switch (str20.hashCode()) {
                                                                case 353103893:
                                                                    if (str20.equals("Distance")) {
                                                                        c6 = 0;
                                                                        break;
                                                                    }
                                                                    c6 = 65535;
                                                                    break;
                                                                case 397447147:
                                                                    if (str20.equals("Opacity")) {
                                                                        c6 = 1;
                                                                        break;
                                                                    }
                                                                    c6 = 65535;
                                                                    break;
                                                                case 1041377119:
                                                                    if (str20.equals("Direction")) {
                                                                        c6 = 2;
                                                                        break;
                                                                    }
                                                                    c6 = 65535;
                                                                    break;
                                                                case 1379387491:
                                                                    if (str20.equals("Shadow Color")) {
                                                                        c6 = 3;
                                                                        break;
                                                                    }
                                                                    c6 = 65535;
                                                                    break;
                                                                case 1383710113:
                                                                    if (str20.equals("Softness")) {
                                                                        c6 = 4;
                                                                        break;
                                                                    }
                                                                    c6 = 65535;
                                                                    break;
                                                                default:
                                                                    c6 = 65535;
                                                                    break;
                                                            }
                                                            switch (c6) {
                                                                case 0:
                                                                    cncVar4 = bff.am(jsonReader, cgfVar, true);
                                                                    break;
                                                                case 1:
                                                                    cncVar2 = bff.am(jsonReader, cgfVar, false);
                                                                    break;
                                                                case 2:
                                                                    cncVar3 = bff.am(jsonReader, cgfVar, false);
                                                                    break;
                                                                case 3:
                                                                    dlzVar3 = bff.t(jsonReader, cgfVar);
                                                                    break;
                                                                case 4:
                                                                    cncVar5 = bff.am(jsonReader, cgfVar, true);
                                                                    break;
                                                                default:
                                                                    jsonReader.skipValue();
                                                                    break;
                                                            }
                                                        } else if (nextName9.equals("nm")) {
                                                            str20 = jsonReader.nextString();
                                                        } else {
                                                            jsonReader.skipValue();
                                                        }
                                                    }
                                                    jsonReader.endObject();
                                                }
                                                jsonReader.endArray();
                                            } else {
                                                jsonReader.skipValue();
                                            }
                                        }
                                        fznVar = (dlzVar3 == null || cncVar2 == null || cncVar3 == null || cncVar4 == null || cncVar5 == null) ? null : new fzn(dlzVar3, cncVar2, cncVar3, cncVar4, cncVar5, 10);
                                    }
                                }
                            } else {
                                jsonReader.skipValue();
                                str8 = str11;
                            }
                            str11 = str8;
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    cgfVar.t("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: ".concat(String.valueOf(arrayList3)));
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 7:
                    z = jsonReader.nextBoolean();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case '\b':
                    f3 = (float) jsonReader.nextDouble();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case '\t':
                    eldVar = dyd.ak(jsonReader, cgfVar);
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case '\n':
                    str10 = jsonReader.nextString();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    break;
                case 11:
                    f4 = (float) jsonReader.nextDouble();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case '\f':
                    i3 = Color.parseColor(jsonReader.nextString());
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case '\r':
                    i2 = (int) (ebx.h() * jsonReader.nextInt());
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 14:
                    f2 = (float) jsonReader.nextDouble();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 15:
                    f7 = (float) jsonReader.nextDouble();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 16:
                    i = (int) (ebx.h() * jsonReader.nextInt());
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 17:
                    cncVar = bff.am(jsonReader, cgfVar, false);
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 18:
                    int nextInt2 = jsonReader.nextInt();
                    if (nextInt2 < bwd.values().length) {
                        bwdVar2 = bwd.values()[nextInt2];
                        int i4 = feq.f16672a[bwdVar2.ordinal()];
                        if (i4 == 1) {
                            cgfVar.t("Unsupported matte type: Luma");
                        } else if (i4 == 2) {
                            cgfVar.t("Unsupported matte type: Luma Inverted");
                        }
                        cgfVar.f12825c++;
                        dpaVar2 = dpaVar4;
                        valueOf = f8;
                        str10 = str16;
                        break;
                    } else {
                        cgfVar.t("Unsupported matte type: ".concat(String.valueOf(nextInt2)));
                        str3 = str11;
                        dpaVar2 = dpaVar4;
                        valueOf = f8;
                        str10 = str16;
                        str11 = str3;
                        break;
                    }
                case 19:
                    int nextInt3 = jsonReader.nextInt();
                    ayjVar = ayj.mn;
                    if (nextInt3 < ayjVar.ordinal()) {
                        ayjVar = ayj.values()[nextInt3];
                    }
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 20:
                    j = jsonReader.nextInt();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 21:
                    str12 = jsonReader.nextString();
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    break;
                case 22:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        exf exfVar = null;
                        dlz dlzVar4 = null;
                        dlz dlzVar5 = null;
                        boolean z4 = false;
                        while (jsonReader.hasNext()) {
                            String nextName10 = jsonReader.nextName();
                            nextName10.getClass();
                            switch (nextName10.hashCode()) {
                                case 111:
                                    if (nextName10.equals("o")) {
                                        c4 = 0;
                                        break;
                                    }
                                    c4 = 65535;
                                    break;
                                case 3588:
                                    if (nextName10.equals("pt")) {
                                        c4 = 1;
                                        break;
                                    }
                                    c4 = 65535;
                                    break;
                                case 104433:
                                    if (nextName10.equals("inv")) {
                                        c4 = 2;
                                        break;
                                    }
                                    c4 = 65535;
                                    break;
                                case 3357091:
                                    if (nextName10.equals("mode")) {
                                        c4 = 3;
                                        break;
                                    }
                                    c4 = 65535;
                                    break;
                                default:
                                    c4 = 65535;
                                    break;
                            }
                            switch (c4) {
                                case 0:
                                    dlzVar5 = bff.av(jsonReader, cgfVar);
                                    break;
                                case 1:
                                    dlzVar4 = new dlz(1, ffb.bc(jsonReader, cgfVar, ebx.h(), ao.f10549g, false));
                                    break;
                                case 2:
                                    z4 = jsonReader.nextBoolean();
                                    break;
                                case 3:
                                    String nextString = jsonReader.nextString();
                                    nextString.getClass();
                                    switch (nextString.hashCode()) {
                                        case 97:
                                            if (nextString.equals("a")) {
                                                c5 = 0;
                                                break;
                                            }
                                            c5 = 65535;
                                            break;
                                        case 105:
                                            if (nextString.equals("i")) {
                                                c5 = 1;
                                                break;
                                            }
                                            c5 = 65535;
                                            break;
                                        case 110:
                                            if (nextString.equals("n")) {
                                                c5 = 2;
                                                break;
                                            }
                                            c5 = 65535;
                                            break;
                                        case 115:
                                            if (nextString.equals("s")) {
                                                c5 = 3;
                                                break;
                                            }
                                            c5 = 65535;
                                            break;
                                        default:
                                            c5 = 65535;
                                            break;
                                    }
                                    switch (c5) {
                                        case 0:
                                            exfVar = exf.dq;
                                            break;
                                        case 1:
                                            cgfVar.t("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                                            exfVar = exf.ox;
                                            break;
                                        case 2:
                                            exfVar = exf.p;
                                            break;
                                        case 3:
                                            exfVar = exf.f16315d;
                                            break;
                                        default:
                                            hbp.b("Unknown mask mode " + nextName10 + ". Defaulting to Add.");
                                            exfVar = exf.dq;
                                            break;
                                    }
                                default:
                                    jsonReader.skipValue();
                                    break;
                            }
                        }
                        jsonReader.endObject();
                        arrayList.add(new fiz(exfVar, dlzVar4, dlzVar5, z4));
                    }
                    cgfVar.f12825c += arrayList.size();
                    jsonReader.endArray();
                    str3 = str11;
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    str11 = str3;
                    break;
                default:
                    jsonReader.skipValue();
                    str3 = str11;
                    dpaVar2 = dpaVar4;
                    valueOf = f8;
                    str10 = str16;
                    str11 = str3;
                    break;
            }
        }
        Float f9 = valueOf;
        String str21 = str10;
        String str22 = str11;
        dpa dpaVar6 = dpaVar2;
        jsonReader.endObject();
        ArrayList arrayList4 = new ArrayList();
        if (f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            str = str21;
            str2 = str22;
            arrayList4.add(new flj(cgfVar, f9, f9, (Interpolator) null, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, Float.valueOf(f3)));
        } else {
            str = str21;
            str2 = str22;
        }
        if (f4 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f4 = cgfVar.f12828f;
        }
        arrayList4.add(new flj(cgfVar, valueOf2, valueOf2, (Interpolator) null, f3, Float.valueOf(f4)));
        arrayList4.add(new flj(cgfVar, f9, f9, (Interpolator) null, f4, Float.valueOf(Float.MAX_VALUE)));
        if (str.endsWith(".ai") || "ai".equals(str2)) {
            cgfVar.t("Convert your Illustrator layers to shape layers.");
        }
        return new cbc(arrayList2, cgfVar, str, j, ayjVar, j2, str12, arrayList, eldVar, i, i2, i3, f2, f7, f5, f6, dlzVar, dpaVar6, arrayList4, bwdVar2, cncVar, z, aoyVar, fznVar);
    }

    public static String ad(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i = 0;
        for (byte b2 : bArr) {
            char[] cArr2 = f10424d;
            cArr[i] = cArr2[(b2 & 255) >>> 4];
            cArr[i + 1] = cArr2[b2 & 15];
            i += 2;
        }
        return new String(cArr);
    }

    public static boolean ae(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return ae(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static Class af(Type type) {
        Objects.requireNonNull(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) af(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return af(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0043 A[LOOP:0: B:1:0x0000->B:18:0x0043, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0042 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Type ag(Type type, Class cls, Type type2) {
        Type type3;
        Type type4 = type2;
        while (true) {
            int i = 0;
            if (!(type4 instanceof TypeVariable)) {
                if (type4 instanceof Class) {
                    Class cls2 = (Class) type4;
                    if (cls2.isArray()) {
                        Class<?> componentType = cls2.getComponentType();
                        Type ag = ag(type, cls, componentType);
                        return componentType == ag ? cls2 : new sf(ag);
                    }
                }
                if (type4 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type4;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type ag2 = ag(type, cls, genericComponentType);
                    return genericComponentType == ag2 ? genericArrayType : new sf(ag2);
                }
                if (type4 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type4;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type ag3 = ag(type, cls, ownerType);
                    boolean z = ag3 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    while (i < length) {
                        Type ag4 = ag(type, cls, actualTypeArguments[i]);
                        if (ag4 != actualTypeArguments[i]) {
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i] = ag4;
                        }
                        i++;
                    }
                    return z ? new cnn(ag3, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                }
                boolean z2 = type4 instanceof WildcardType;
                Type type5 = type4;
                if (z2) {
                    WildcardType wildcardType = (WildcardType) type4;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Type[] upperBounds = wildcardType.getUpperBounds();
                    if (lowerBounds.length == 1) {
                        Type ag5 = ag(type, cls, lowerBounds[0]);
                        type5 = wildcardType;
                        if (ag5 != lowerBounds[0]) {
                            return new aaf(new Type[]{Object.class}, new Type[]{ag5});
                        }
                    } else {
                        type5 = wildcardType;
                        if (upperBounds.length == 1) {
                            Type ag6 = ag(type, cls, upperBounds[0]);
                            type5 = wildcardType;
                            if (ag6 != upperBounds[0]) {
                                return new aaf(new Type[]{ag6}, f10425e);
                            }
                        }
                    }
                }
                return type5;
            }
            TypeVariable typeVariable = (TypeVariable) type4;
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 != null) {
                Type j = j(type, cls, cls3);
                if (j instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    while (i < typeParameters.length) {
                        if (typeVariable.equals(typeParameters[i])) {
                            type3 = ((ParameterizedType) j).getActualTypeArguments()[i];
                            if (type3 != typeVariable) {
                                return type3;
                            }
                            type4 = type3;
                        } else {
                            i++;
                        }
                    }
                    throw new NoSuchElementException();
                }
            }
            type3 = typeVariable;
            if (type3 != typeVariable) {
            }
        }
    }

    public static boolean ah(Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (ah(type2)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return ah(((GenericArrayType) type).getGenericComponentType());
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return true;
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    public static void ai(Parcel parcel, Boolean bool) {
        if (bool == null) {
            parcel.writeByte((byte) 2);
        } else {
            parcel.writeByte(bool.booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    public static void aj(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean ak(double d2) {
        return Math.getExponent(d2) <= 1023;
    }

    public static boolean al(Context context, int i, String str) {
        ccb c2 = chk.c(context);
        c2.getClass();
        try {
            AppOpsManager appOpsManager = (AppOpsManager) c2.f12624a.getSystemService("appops");
            if (appOpsManager == null) {
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            }
            appOpsManager.checkPackage(i, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static IllegalArgumentException am(Method method, int i, String str, Object... objArr) {
        return w(method, null, str + " (" + bfh.f11445b.f(method, i) + ")", objArr);
    }

    public static float an(float f2) {
        return f2 <= 0.0031308f ? f2 * 12.92f : (float) ((Math.pow(f2, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static Type ao(Type type, Class cls) {
        if (Map.class.isAssignableFrom(cls)) {
            return ag(type, cls, j(type, cls, Map.class));
        }
        throw new IllegalArgumentException();
    }

    public static Boolean f(Parcel parcel) {
        byte readByte = parcel.readByte();
        if (readByte == 2) {
            return null;
        }
        return Boolean.valueOf(readByte == 1);
    }

    public static int g(int i, float f2, int i2) {
        if (i == i2) {
            return i;
        }
        float f3 = ((i >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float f4 = ((i >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float f5 = ((i >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float f6 = ((i2 >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float f7 = ((i2 >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float f8 = ((i2 >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float p = p(f4);
        float p2 = p(f5);
        float p3 = p((i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f);
        float p4 = p(f7);
        float p5 = p(f8);
        float p6 = p((i2 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f);
        float g2 = awf.g(f6, f3, f2, f3);
        float g3 = awf.g(p4, p, f2, p);
        float g4 = awf.g(p5, p2, f2, p2);
        float g5 = awf.g(p6, p3, f2, p3);
        float an = an(g3) * 255.0f;
        float an2 = an(g4) * 255.0f;
        return Math.round(an(g5) * 255.0f) | (Math.round(an) << 16) | (Math.round(g2 * 255.0f) << 24) | (Math.round(an2) << 8);
    }

    public static String h(String str) {
        try {
            return (String) SystemProperties.class.getDeclaredMethod("get", String.class).invoke(null, str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static beg i() {
        String str;
        ClassLoader classLoader = aky.class.getClassLoader();
        if (beg.class.equals(beg.class)) {
            str = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";
        } else {
            if (!beg.class.getPackage().equals(aky.class.getPackage())) {
                throw new IllegalArgumentException(beg.class.getName());
            }
            str = beg.class.getPackage().getName() + ".BlazeGenerated" + beg.class.getSimpleName() + "Loader";
        }
        try {
            try {
                try {
                    awf.e(Class.forName(str, true, classLoader).getConstructor(null).newInstance(null));
                    throw null;
                } catch (IllegalAccessException e2) {
                    throw new IllegalStateException(e2);
                } catch (InvocationTargetException e3) {
                    throw new IllegalStateException(e3);
                }
            } catch (InstantiationException e4) {
                throw new IllegalStateException(e4);
            } catch (NoSuchMethodException e5) {
                throw new IllegalStateException(e5);
            }
        } catch (ClassNotFoundException unused) {
            try {
                Iterator it = Arrays.asList(new aky[0]).iterator();
                ArrayList arrayList = new ArrayList();
                while (it.hasNext()) {
                    try {
                        if (it.next() == null) {
                            throw null;
                        }
                        throw new ClassCastException();
                    } catch (ServiceConfigurationError e6) {
                        Logger.getLogger(ctv.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(beg.class.getSimpleName()), (Throwable) e6);
                    }
                }
                if (arrayList.size() == 1) {
                    return (beg) arrayList.get(0);
                }
                if (arrayList.size() == 0) {
                    return null;
                }
                try {
                    return (beg) beg.class.getMethod("combine", Collection.class).invoke(null, arrayList);
                } catch (IllegalAccessException e7) {
                    throw new IllegalStateException(e7);
                } catch (NoSuchMethodException e8) {
                    throw new IllegalStateException(e8);
                } catch (InvocationTargetException e9) {
                    throw new IllegalStateException(e9);
                }
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    public static Type j(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls3 = interfaces[i];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return j(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return j(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static IllegalArgumentException k(Method method, Exception exc, int i, String str, Object... objArr) {
        return w(method, exc, str + " (" + bfh.f11445b.f(method, i) + ")", objArr);
    }

    public static long l(double d2) {
        zzfwq.zzf(ak(d2), "not a normal value");
        int exponent = Math.getExponent(d2);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d2) & 4503599627370495L;
        return exponent == -1023 ? doubleToRawLongBits + doubleToRawLongBits : doubleToRawLongBits | 4503599627370496L;
    }

    public static ArrayList m(Context context) {
        fxe.e m = atf.g(context).m();
        dgk[] dgkVarArr = m != null ? m.resources : null;
        int integer = context.getResources().getInteger(R.integer.image_text_item_show);
        boolean z = context.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("datetrinea", false);
        if (acw.n(dgkVarArr)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (dgk dgkVar : dgkVarArr) {
            boolean isShow = dgkVar.isShow(integer);
            if (dgkVar.getShow() == 16 && cux.aj(context)) {
                isShow = true;
            }
            if (z || (isShow && dgkVar.isVersionValid(Build.VERSION.SDK_INT) && dgkVar.isDateValid())) {
                dgkVar.setIconResId(ab(dgkVar));
                arrayList.add(dgkVar);
            }
        }
        return arrayList;
    }

    public static byte[] n(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("Hex string has odd number of characters");
        }
        byte[] bArr = new byte[length / 2];
        int i = 0;
        while (i < length) {
            int i2 = i + 2;
            bArr[i / 2] = (byte) Integer.parseInt(str.substring(i, i2), 16);
            i = i2;
        }
        return bArr;
    }

    public static String o(Activity activity, int i, int i2, int i3) {
        HashMap hashMap = fnp.f17095b;
        String str = Build.MANUFACTURER;
        return activity.getString("huawei".equalsIgnoreCase(str) ? R.string.accessibility_permission_message_huawei : fnp.m() ? dyd.bp(29) ? R.string.accessibility_permission_message_xiaomi_new : R.string.accessibility_permission_message_xiaomi_old : "oppo".equalsIgnoreCase(str) ? R.string.accessibility_permission_message_oppo : fnp.f() ? R.string.accessibility_permission_message_vivo : "honor".equalsIgnoreCase(str) ? R.string.accessibility_permission_message_honor : "Samsung".equalsIgnoreCase(str) ? R.string.accessibility_permission_message_samsung : R.string.accessibility_permission_message_other, activity.getString(i), activity.getString(i2), activity.getString(i3));
    }

    public static float p(float f2) {
        return f2 <= 0.04045f ? f2 / 12.92f : (float) Math.pow((f2 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static final dlg q(boj bojVar) {
        if (bojVar._x(dwm.o) == null) {
            bojVar = bojVar._y(new fhq());
        }
        return new dlg(bojVar);
    }

    public static boolean r(Annotation[] annotationArr, Class cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    public static String s(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static void t(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static cgn u(int i, zzacs zzacsVar, zzed zzedVar) {
        cgn c2 = cgn.c(zzacsVar, zzedVar);
        while (true) {
            int i2 = c2.f12846a;
            if (i2 == i) {
                return c2;
            }
            dub.g(i2, "Ignoring unknown WAV chunk: ", "WavHeaderReader");
            long j = c2.f12847b;
            long j2 = 8 + j;
            if ((1 & j) != 0) {
                j2 = 9 + j;
            }
            if (j2 > 2147483647L) {
                throw zzbh.zzc("Chunk is too large (~2GB+) to skip; id: " + i2);
            }
            zzacsVar.zzk((int) j2);
            c2 = cgn.c(zzacsVar, zzedVar);
        }
    }

    public static float v(float f2, float f3, float f4) {
        return (f4 * f3) + ((1.0f - f4) * f2);
    }

    public static IllegalArgumentException w(Method method, Exception exc, String str, Object... objArr) {
        StringBuilder l = tn.l(String.format(str, objArr), "\n    for method ");
        l.append(method.getDeclaringClass().getSimpleName());
        l.append(".");
        l.append(method.getName());
        return new IllegalArgumentException(l.toString(), exc);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void x(Activity activity, DownloadManager.Request request, String str, String str2, cxc cxcVar) {
        String str3;
        Context context;
        WeakReference weakReference;
        int i;
        DownloadManager downloadManager = (DownloadManager) activity.getSystemService("download");
        long ao = buj.ao(str);
        if (ao > 0 && ao < 20971520 && !TextUtils.isEmpty(str2)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(str);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    } else {
                        messageDigest.update(bArr, 0, read);
                    }
                }
                byte[] digest = messageDigest.digest();
                StringBuilder sb = new StringBuilder();
                for (byte b2 : digest) {
                    sb.append(Integer.toString((b2 & 255) + 256, 16).substring(1));
                }
                str3 = sb.toString();
            } catch (IOException e2) {
                e2.printStackTrace();
                str3 = null;
                if (str2.equals(str3)) {
                }
                buj.ab(str);
                buj.ar(str, true);
                cxcVar.h(downloadManager.enqueue(request));
            } catch (NoSuchAlgorithmException e3) {
                e3.printStackTrace();
                str3 = null;
                if (str2.equals(str3)) {
                }
                buj.ab(str);
                buj.ar(str, true);
                cxcVar.h(downloadManager.enqueue(request));
            }
            if (str2.equals(str3)) {
                dqe dqeVar = (dqe) cxcVar.f13672b;
                if (TextUtils.isEmpty(str)) {
                    dqeVar.ae(cxcVar.f13675e, 202);
                    return;
                }
                context = dqeVar.x;
                gm.c(context, R.string.upgrade_apk_exist);
                weakReference = dqeVar.y;
                gs.au((Activity) weakReference.get(), str);
                return;
            }
        }
        buj.ab(str);
        buj.ar(str, true);
        cxcVar.h(downloadManager.enqueue(request));
    }

    public static boolean y(zzacs zzacsVar) {
        zzed zzedVar = new zzed(8);
        int i = cgn.c(zzacsVar, zzedVar).f12846a;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        zzacsVar.zzh(zzedVar.zzN(), 0, 4);
        zzedVar.zzL(0);
        int zzg = zzedVar.zzg();
        if (zzg == 1463899717) {
            return true;
        }
        zzdt.zzc("WavHeaderReader", "Unsupported form type: " + zzg);
        return false;
    }

    public static crd z(fc fcVar, SQLiteDatabase sQLiteDatabase) {
        bff.p(fcVar, "refHolder");
        crd crdVar = (crd) fcVar.f16548e;
        if (crdVar != null && ((SQLiteDatabase) crdVar.f13370d).equals(sQLiteDatabase)) {
            return crdVar;
        }
        crd crdVar2 = new crd(0, sQLiteDatabase);
        fcVar.f16548e = crdVar2;
        return crdVar2;
    }

    public abstract List ap(String str, List list);
}
