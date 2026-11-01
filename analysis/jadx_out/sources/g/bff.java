package g;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.GradientDrawable;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.JsonReader;
import android.view.ActionMode;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public abstract class bff {

    /* renamed from: a, reason: collision with root package name */
    public static final hy f11441a = new hy("RESUME_TOKEN", 1);

    /* renamed from: b, reason: collision with root package name */
    public static final boolean[] f11442b = new boolean[3];

    public static void aa(TextView textView, int i) {
        acw.bm(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static int ab(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals("transparent")) {
                return 0;
            }
            if (str.charAt(0) == '#' && str.length() == 4) {
                StringBuilder sb = new StringBuilder("#");
                char[] charArray = str.toCharArray();
                for (int i2 = 1; i2 < charArray.length; i2++) {
                    sb.append(charArray[i2]);
                    sb.append(charArray[i2]);
                }
                return Color.parseColor(sb.toString());
            }
            if (str.charAt(0) == '#' && str.length() == 7) {
                return Color.parseColor(str);
            }
            if (str.charAt(0) == '#' && str.length() == 9) {
                return Color.parseColor(str);
            }
            if (!str.startsWith("rgba")) {
                return -16777216;
            }
            String[] split = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
            if (split != null && split.length == 4) {
                return (((int) ((Float.parseFloat(split[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(split[0])) << 16) | (((int) Float.parseFloat(split[1])) << 8) | ((int) Float.parseFloat(split[2]));
            }
        }
        return i;
    }

    public static im ac(int[] iArr, int[] iArr2) {
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i : iArr) {
            try {
                builder.addCapability(i);
            } catch (IllegalArgumentException unused) {
                cyl f2 = cyl.f();
                int i2 = im.f19434a;
                int i3 = im.f19434a;
                f2.getClass();
            }
        }
        int[] iArr3 = fso.h;
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = iArr3[i4];
            int length = iArr.length;
            int i6 = 0;
            while (true) {
                if (i6 >= length) {
                    i6 = -1;
                    break;
                }
                if (i5 == iArr[i6]) {
                    break;
                }
                i6++;
            }
            if (!(i6 >= 0)) {
                try {
                    builder.removeCapability(i5);
                } catch (IllegalArgumentException unused2) {
                    cyl f3 = cyl.f();
                    int i7 = im.f19434a;
                    int i8 = im.f19434a;
                    f3.getClass();
                }
            }
        }
        for (int i9 : iArr2) {
            builder.addTransportType(i9);
        }
        NetworkRequest build = builder.build();
        e(build, "networkRequest.build()");
        return new im(build);
    }

    public static int ad(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static ActionMode.Callback ae(ActionMode.Callback callback, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof cz) || callback == null) ? callback : new cz(callback, textView);
    }

    public static ActionMode.Callback af(ActionMode.Callback callback) {
        return (!(callback instanceof cz) || Build.VERSION.SDK_INT < 26) ? callback : ((cz) callback).f13794c;
    }

    public static void ag(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str);
        l(nullPointerException, bff.class.getName());
        throw nullPointerException;
    }

    public static final String ah(Object[] objArr, int i, int i2, ddt ddtVar) {
        StringBuilder sb = new StringBuilder((i2 * 3) + 2);
        sb.append("[");
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i + i3];
            if (obj == ddtVar) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        String sb2 = sb.toString();
        e(sb2, "toString(...)");
        return sb2;
    }

    public static void ai(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(awf.ac(i2, "at index "));
            }
        }
    }

    public static void aj(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static coy ak(String str) {
        int i;
        GradientDrawable.Orientation orientation;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String substring = str.substring(str.indexOf("(") + 1, str.lastIndexOf(")"));
        if (TextUtils.isEmpty(substring)) {
            return null;
        }
        if (TextUtils.isEmpty(substring)) {
            i = 0;
        } else {
            i = 0;
            for (int i2 = 0; i2 < substring.length(); i2++) {
                if (substring.charAt(i2) == '%') {
                    i++;
                }
            }
        }
        int indexOf = substring.indexOf(",");
        String substring2 = substring.substring(0, indexOf);
        coy coyVar = new coy();
        try {
            int parseInt = substring2.contains("deg") ? Integer.parseInt(substring2.substring(0, substring2.length() - 3).trim()) : Integer.parseInt(substring2);
            orientation = parseInt == 90 ? GradientDrawable.Orientation.LEFT_RIGHT : parseInt == 180 ? GradientDrawable.Orientation.TOP_BOTTOM : parseInt == 270 ? GradientDrawable.Orientation.RIGHT_LEFT : parseInt == 135 ? GradientDrawable.Orientation.TL_BR : parseInt == 45 ? GradientDrawable.Orientation.BL_TR : GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            orientation = GradientDrawable.Orientation.LEFT_RIGHT;
        }
        coyVar.f13257a = orientation;
        String substring3 = substring.substring(indexOf + 1);
        int[] iArr = new int[i];
        float[] fArr = new float[i];
        for (int i3 = 0; i3 < i; i3++) {
            int indexOf2 = substring3.indexOf("%");
            String trim = substring3.substring(0, indexOf2 + 1).trim();
            int indexOf3 = (trim.contains("rgba") ? trim.indexOf(")") : trim.indexOf(" ")) + 1;
            iArr[i3] = ab(trim.substring(0, indexOf3).trim(), -16777216);
            fArr[i3] = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, trim.substring(indexOf3, trim.indexOf("%")).trim()) / 100.0f;
            int i4 = indexOf2 + 2;
            if (substring3.length() <= i4) {
                break;
            }
            substring3 = substring3.substring(i4);
        }
        coyVar.f13258b = iArr;
        coyVar.f13259c = fArr;
        return coyVar;
    }

    public static final int al(glm glmVar, Object obj, int i) {
        int i2 = glmVar.f18350a;
        if (i2 == 0) {
            return -1;
        }
        try {
            int w = erl.w(i2, i, glmVar.f18351b);
            if (w < 0 || n(obj, glmVar.f18352c[w])) {
                return w;
            }
            int i3 = w + 1;
            while (i3 < i2 && glmVar.f18351b[i3] == i) {
                if (n(obj, glmVar.f18352c[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = w - 1; i4 >= 0 && glmVar.f18351b[i4] == i; i4--) {
                if (n(obj, glmVar.f18352c[i4])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static cnc am(JsonReader jsonReader, cgf cgfVar, boolean z) {
        return new cnc(4, ffb.bc(jsonReader, cgfVar, z ? ebx.h() : 1.0f, bfy.f11482d, false));
    }

    public static final void an(int i, int i2, Object[] objArr) {
        p(objArr, "<this>");
        while (i < i2) {
            objArr[i] = null;
            i++;
        }
    }

    public static final void ao(DataOutputStream dataOutputStream, String str, Object obj) {
        String str2;
        int i;
        if (obj == null) {
            dataOutputStream.writeByte(0);
        } else if (obj instanceof Boolean) {
            dataOutputStream.writeByte(1);
            dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
        } else if (obj instanceof Byte) {
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(((Number) obj).byteValue());
        } else if (obj instanceof Integer) {
            dataOutputStream.writeByte(3);
            dataOutputStream.writeInt(((Number) obj).intValue());
        } else if (obj instanceof Long) {
            dataOutputStream.writeByte(4);
            dataOutputStream.writeLong(((Number) obj).longValue());
        } else if (obj instanceof Float) {
            dataOutputStream.writeByte(5);
            dataOutputStream.writeFloat(((Number) obj).floatValue());
        } else if (obj instanceof Double) {
            dataOutputStream.writeByte(6);
            dataOutputStream.writeDouble(((Number) obj).doubleValue());
        } else if (obj instanceof String) {
            dataOutputStream.writeByte(7);
            dataOutputStream.writeUTF((String) obj);
        } else {
            if (!(obj instanceof Object[])) {
                throw new IllegalArgumentException("Unsupported value type " + bii.b(obj.getClass()).f());
            }
            Object[] objArr = (Object[]) obj;
            beq b2 = bii.b(objArr.getClass());
            String str3 = null;
            if (b2.equals(bii.b(Boolean[].class))) {
                i = 8;
            } else if (b2.equals(bii.b(Byte[].class))) {
                i = 9;
            } else if (b2.equals(bii.b(Integer[].class))) {
                i = 10;
            } else if (b2.equals(bii.b(Long[].class))) {
                i = 11;
            } else if (b2.equals(bii.b(Float[].class))) {
                i = 12;
            } else if (b2.equals(bii.b(Double[].class))) {
                i = 13;
            } else {
                if (!b2.equals(bii.b(String[].class))) {
                    StringBuilder sb = new StringBuilder("Unsupported value type ");
                    beq b3 = bii.b(objArr.getClass());
                    HashMap hashMap = beq.f11398c;
                    Class cls = b3.f11399d;
                    p(cls, "jClass");
                    if (!cls.isAnonymousClass() && !cls.isLocalClass()) {
                        if (cls.isArray()) {
                            Class<?> componentType = cls.getComponentType();
                            if (componentType.isPrimitive() && (str2 = (String) hashMap.get(componentType.getName())) != null) {
                                str3 = str2.concat("Array");
                            }
                            if (str3 == null) {
                                str3 = "kotlin.Array";
                            }
                        } else {
                            str3 = (String) hashMap.get(cls.getName());
                            if (str3 == null) {
                                str3 = cls.getCanonicalName();
                            }
                        }
                    }
                    sb.append(str3);
                    throw new IllegalArgumentException(sb.toString());
                }
                i = 14;
            }
            dataOutputStream.writeByte(i);
            dataOutputStream.writeInt(objArr.length);
            for (Object obj2 : objArr) {
                if (i == 8) {
                    Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                    dataOutputStream.writeBoolean(bool != null ? bool.booleanValue() : false);
                } else if (i == 9) {
                    Byte b4 = obj2 instanceof Byte ? (Byte) obj2 : null;
                    dataOutputStream.writeByte(b4 != null ? b4.byteValue() : (byte) 0);
                } else if (i == 10) {
                    Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                    dataOutputStream.writeInt(num != null ? num.intValue() : 0);
                } else if (i == 11) {
                    Long l = obj2 instanceof Long ? (Long) obj2 : null;
                    dataOutputStream.writeLong(l != null ? l.longValue() : 0L);
                } else if (i == 12) {
                    Float f2 = obj2 instanceof Float ? (Float) obj2 : null;
                    dataOutputStream.writeFloat(f2 != null ? f2.floatValue() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                } else if (i == 13) {
                    Double d2 = obj2 instanceof Double ? (Double) obj2 : null;
                    dataOutputStream.writeDouble(d2 != null ? d2.doubleValue() : 0.0d);
                } else if (i == 14) {
                    String str4 = obj2 instanceof String ? (String) obj2 : null;
                    if (str4 == null) {
                        str4 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
                    }
                    dataOutputStream.writeUTF(str4);
                }
            }
        }
        dataOutputStream.writeUTF(str);
    }

    public static String ap(aki akiVar) {
        StringBuilder sb = new StringBuilder(akiVar.g());
        for (int i = 0; i < akiVar.g(); i++) {
            byte d2 = akiVar.d(i);
            if (d2 == 34) {
                sb.append("\\\"");
            } else if (d2 == 39) {
                sb.append("\\'");
            } else if (d2 != 92) {
                switch (d2) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (d2 < 32 || d2 > 126) {
                            sb.append('\\');
                            sb.append((char) (((d2 >>> 6) & 3) + 48));
                            sb.append((char) (((d2 >>> 3) & 7) + 48));
                            sb.append((char) ((d2 & 7) + 48));
                            break;
                        } else {
                            sb.append((char) d2);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static final void aq(glm glmVar, int i) {
        glmVar.f18351b = new int[i];
        glmVar.f18352c = new Object[i];
    }

    public static void ar(TextView textView, int i) {
        acw.bm(i);
        if (Build.VERSION.SDK_INT >= 28) {
            eyo.k(textView, i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static dlz as(JsonReader jsonReader, cgf cgfVar) {
        return new dlz(2, ffb.bc(jsonReader, cgfVar, ebx.h(), bmr.f11839f, true));
    }

    public static emz at(cci cciVar) {
        if (cciVar.l.g(csv.DONT_GENERATE)) {
            return emz.f15831e;
        }
        ur urVar = cciVar.f12631ab.i;
        int i = gcl.f17889a[urVar.o.ordinal()];
        if (i == 1) {
            return (emz) j(cciVar, new amb(1, new ggg(cciVar, urVar)));
        }
        if (i != 2) {
            throw new gck("Unknown output format");
        }
        return new grx((String) j(cciVar, new amb(0, new ba(cciVar))));
    }

    public static void au(aep aepVar, bwo bwoVar, brh brhVar) {
        brhVar.av = -1;
        hac hacVar = brhVar.bp;
        fol[] folVarArr = brhVar.ch;
        hac hacVar2 = brhVar.as;
        hac hacVar3 = brhVar.bx;
        hac hacVar4 = brhVar.br;
        hac hacVar5 = brhVar.cw;
        brhVar.bz = -1;
        fol folVar = aepVar.ch[0];
        fol folVar2 = fol.WRAP_CONTENT;
        if (folVar != folVar2 && folVarArr[0] == fol.MATCH_PARENT) {
            int i = hacVar5.i;
            int eb = aepVar.eb() - hacVar4.i;
            hacVar5.f19106f = bwoVar.t(hacVar5);
            hacVar4.f19106f = bwoVar.t(hacVar4);
            bwoVar.v(hacVar5.f19106f, i);
            bwoVar.v(hacVar4.f19106f, eb);
            brhVar.av = 2;
            brhVar.cv = i;
            int i2 = eb - i;
            brhVar.bc = i2;
            int i3 = brhVar.bb;
            if (i2 < i3) {
                brhVar.bc = i3;
            }
        }
        if (aepVar.ch[1] == folVar2 || folVarArr[1] != fol.MATCH_PARENT) {
            return;
        }
        int i4 = hacVar3.i;
        int di = aepVar.di() - hacVar2.i;
        hacVar3.f19106f = bwoVar.t(hacVar3);
        hacVar2.f19106f = bwoVar.t(hacVar2);
        bwoVar.v(hacVar3.f19106f, i4);
        bwoVar.v(hacVar2.f19106f, di);
        if (brhVar.bn > 0 || brhVar.aq == 8) {
            crb t = bwoVar.t(hacVar);
            hacVar.f19106f = t;
            bwoVar.v(t, brhVar.bn + i4);
        }
        brhVar.bz = 2;
        brhVar.cb = i4;
        int i5 = di - i4;
        brhVar.bt = i5;
        int i6 = brhVar.au;
        if (i5 < i6) {
            brhVar.bt = i6;
        }
    }

    public static dlz av(JsonReader jsonReader, cgf cgfVar) {
        return new dlz(6, ffb.bc(jsonReader, cgfVar, 1.0f, dwm.z, false));
    }

    public static bsr c(AppCompatTextView appCompatTextView) {
        int i;
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 28) {
            return new bsr(eyo.l(appCompatTextView));
        }
        TextPaint textPaint = new TextPaint(appCompatTextView.getPaint());
        if (i3 >= 23) {
            i = 1;
            i2 = 1;
        } else {
            i = 0;
            i2 = 0;
        }
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        if (i3 >= 23) {
            i = id.s(appCompatTextView);
            i2 = id.n(appCompatTextView);
        }
        if (appCompatTextView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else if (i3 < 28 || (appCompatTextView.getInputType() & 15) != 3) {
            boolean z = appCompatTextView.getLayoutDirection() == 1;
            switch (appCompatTextView.getTextDirection()) {
                case 2:
                    textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                    break;
                case 3:
                    textDirectionHeuristic = TextDirectionHeuristics.LTR;
                    break;
                case 4:
                    textDirectionHeuristic = TextDirectionHeuristics.RTL;
                    break;
                case 5:
                    textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                    break;
                case 6:
                    break;
                case 7:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    break;
                default:
                    if (z) {
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    }
                    break;
            }
        } else {
            byte directionality = Character.getDirectionality(eyo.q(cml.b(appCompatTextView.getTextLocale()))[0].codePointAt(0));
            textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        return new bsr(textPaint, textDirectionHeuristic, i, i2);
    }

    public static void d(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        l(nullPointerException, bff.class.getName());
        throw nullPointerException;
    }

    public static void e(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str.concat(" must not be null"));
        l(nullPointerException, bff.class.getName());
        throw nullPointerException;
    }

    public static final int f(fhs fhsVar, int i) {
        int i2;
        int[] iArr = fhsVar.f16807b;
        int i3 = i + 1;
        int length = fhsVar.f16806a.length;
        p(iArr, "<this>");
        int i4 = length - 1;
        int i5 = 0;
        while (true) {
            if (i5 <= i4) {
                i2 = (i5 + i4) >>> 1;
                int i6 = iArr[i2];
                if (i6 >= i3) {
                    if (i6 <= i3) {
                        break;
                    }
                    i4 = i2 - 1;
                } else {
                    i5 = i2 + 1;
                }
            } else {
                i2 = (-i5) - 1;
                break;
            }
        }
        return i2 >= 0 ? i2 : ~i2;
    }

    public static void g(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    public static gsh h(dwg dwgVar, ghr ghrVar) {
        String str;
        eek eekVar;
        eok eokVar;
        Object obj = ghrVar.f18176f;
        int[] iArr = fkp.f16941a;
        dnd dndVar = ghrVar.f18175b;
        switch (iArr[dndVar.ordinal()]) {
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return (gsh) m(ghrVar);
            case 2:
                return gsh.ag(((Boolean) obj).booleanValue() ? 0L : 1L, cwx.at);
            case 10:
                return gsh.aj(new epw((String) obj));
            case 11:
                return gsh.aj(new dkd(cwx.ba((String) obj)));
            case 12:
                return gsh.aj(z(dwgVar, (fw) obj));
            case 13:
                dpb dpbVar = (dpb) obj;
                if (dpbVar.e().b()) {
                    StringBuilder sb = new StringBuilder("FIELD:");
                    switch (dpbVar.f14570a) {
                        case 0:
                            eokVar = (eok) dpbVar.f14572c;
                            break;
                        default:
                            eokVar = null;
                            break;
                    }
                    sb.append(eokVar);
                    eekVar = new epw(sb.toString());
                } else {
                    ful d2 = dpbVar.d();
                    d2.m();
                    ve h = ve.h(dwgVar, cwx.bf("java.lang.invoke.MethodHandles.Lookup"));
                    ecx e2 = dpbVar.e();
                    int i = fkp.f16942b[e2.ordinal()];
                    if (i == 1) {
                        str = "findStatic";
                    } else if (i == 2) {
                        str = "findConstructor";
                    } else if (i == 3 || i == 4 || i == 5) {
                        str = "findVirtual";
                    } else {
                        str = "<" + e2 + '>';
                    }
                    hdc hdcVar = new hdc(ayu.k(dwgVar, h, str, Arrays.asList(cwx.f13657ab, cwx.al, cwx.bf("java.lang.invoke.MethodType")), cwx.bf("java.lang.invoke.MethodHandle")), eqp.DIRECT, 4);
                    hdcVar._an(q(dwgVar));
                    hdcVar._an(gsh.aj(new dkd(cwx.bf(d2.l()))));
                    hdcVar._an(gsh.aj(new epw(d2.getName())));
                    hdcVar._an(gsh.aj(z(dwgVar, d2)));
                    eekVar = hdcVar;
                }
                return gsh.aj(eekVar);
            default:
                throw new gck("Unsupported type for raw invoke-custom: " + dndVar);
        }
    }

    public static final fu i(Object obj) {
        if (obj != cro.o) {
            return (fu) obj;
        }
        throw new IllegalStateException("Does not contain segment");
    }

    public static Object j(cci cciVar, Callable callable) {
        try {
            return callable.call();
        } catch (Exception e2) {
            if (!cciVar.l.g(csv.RESTART_CODEGEN)) {
                throw new gck("Code generation error", e2);
            }
            cciVar.v(csv.RESTART_CODEGEN);
            try {
                return callable.call();
            } catch (Exception e3) {
                throw new gck("Code generation error after restart", e3);
            }
        }
    }

    public static byte[] k(dwa dwaVar) {
        p(dwaVar, "data");
        HashMap hashMap = dwaVar.f14916b;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeShort(-21521);
                dataOutputStream.writeShort(1);
                dataOutputStream.writeInt(hashMap.size());
                for (Map.Entry entry : hashMap.entrySet()) {
                    ao(dataOutputStream, (String) entry.getKey(), entry.getValue());
                }
                dataOutputStream.flush();
                if (dataOutputStream.size() > 10240) {
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                dataOutputStream.close();
                e(byteArray, "{\n                ByteAr…          }\n            }");
                return byteArray;
            } finally {
            }
        } catch (IOException e2) {
            cyl.f().j(ow.f19782a, "Error in Data#toByteArray: ", e2);
            return new byte[0];
        }
    }

    public static void l(RuntimeException runtimeException, String str) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
    }

    public static Object m(ghr ghrVar) {
        if (ghrVar == null) {
            return null;
        }
        Object obj = ghrVar.f18176f;
        switch (fkp.f16941a[ghrVar.f18175b.ordinal()]) {
            case 1:
                return gsh.ag(0L, cwx.t);
            case 2:
                return Boolean.TRUE.equals(obj) ? new ekh(1L, cwx.at) : new ekh(0L, cwx.at);
            case 3:
                return gsh.ag(((Byte) obj).byteValue(), cwx.z);
            case 4:
                return gsh.ag(((Short) obj).shortValue(), cwx.ac);
            case 5:
                return gsh.ag(((Character) obj).charValue(), cwx.ai);
            case 6:
                return gsh.ag(((Integer) obj).intValue(), cwx.an);
            case 7:
                return gsh.ag(((Long) obj).longValue(), cwx.am);
            case 8:
                return gsh.ag(Float.floatToIntBits(((Float) obj).floatValue()), cwx.ax);
            case 9:
                return gsh.ag(Double.doubleToLongBits(((Double) obj).doubleValue()), cwx.s);
            case 10:
                return (String) obj;
            case 11:
                return cwx.ba((String) obj);
            default:
                return null;
        }
    }

    public static boolean n(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static final boolean o(Object obj) {
        return obj == cro.o;
    }

    public static void p(Object obj, String str) {
        if (obj != null) {
            return;
        }
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = bff.class.getName();
        int i = 0;
        while (!stackTrace[i].getClassName().equals(name)) {
            i++;
        }
        while (stackTrace[i].getClassName().equals(name)) {
            i++;
        }
        StackTraceElement stackTraceElement = stackTrace[i];
        StringBuilder o = tn.o("Parameter specified as non-null is null: method ", stackTraceElement.getClassName(), ".", stackTraceElement.getMethodName(), ", parameter ");
        o.append(str);
        NullPointerException nullPointerException = new NullPointerException(o.toString());
        l(nullPointerException, bff.class.getName());
        throw nullPointerException;
    }

    public static cly q(dwg dwgVar) {
        return gsh.aj(new hdc(ayu.k(dwgVar, ve.h(dwgVar, cwx.bf("java.lang.invoke.MethodHandles")), "lookup", Collections.EMPTY_LIST, cwx.bf("java.lang.invoke.MethodHandles.Lookup")), eqp.STATIC, 0));
    }

    public static Object r(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() != 0) {
            return creator.createFromParcel(parcel);
        }
        return null;
    }

    public static dlz s(JsonReader jsonReader, cgf cgfVar, int i) {
        cyl cylVar = new cyl();
        cylVar.f13765e = i;
        ArrayList bc = ffb.bc(jsonReader, cgfVar, 1.0f, cylVar, false);
        for (int i2 = 0; i2 < bc.size(); i2++) {
            flj fljVar = (flj) bc.get(i2);
            fns fnsVar = (fns) fljVar.p;
            fns fnsVar2 = (fns) fljVar.r;
            if (fnsVar != null && fnsVar2 != null) {
                float[] fArr = fnsVar.f17105a;
                int length = fArr.length;
                float[] fArr2 = fnsVar2.f17105a;
                if (length != fArr2.length) {
                    int length2 = fArr.length + fArr2.length;
                    float[] fArr3 = new float[length2];
                    System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
                    System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
                    Arrays.sort(fArr3);
                    float f2 = Float.NaN;
                    int i3 = 0;
                    for (int i4 = 0; i4 < length2; i4++) {
                        float f3 = fArr3[i4];
                        if (f3 != f2) {
                            fArr3[i3] = f3;
                            i3++;
                            f2 = fArr3[i4];
                        }
                    }
                    float[] copyOfRange = Arrays.copyOfRange(fArr3, 0, i3);
                    fljVar = new flj(fnsVar.c(copyOfRange), fnsVar2.c(copyOfRange));
                }
            }
            bc.set(i2, fljVar);
        }
        return new dlz(5, bc);
    }

    public static dlz t(JsonReader jsonReader, cgf cgfVar) {
        return new dlz(0, ffb.bc(jsonReader, cgfVar, 1.0f, dwm.f14948f, false));
    }

    public static boolean u(String str) {
        fpc fpcVar = gvy.f18850c;
        Set<fgp> unmodifiableSet = Collections.unmodifiableSet(fnk.f17081d);
        HashSet hashSet = new HashSet();
        for (fgp fgpVar : unmodifiableSet) {
            if (((fnk) fgpVar).f17082e.equals(str)) {
                hashSet.add(fgpVar);
            }
        }
        if (hashSet.isEmpty()) {
            throw new RuntimeException("Unknown feature ".concat(str));
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            fnk fnkVar = (fnk) ((fgp) it.next());
            if (fnkVar.b() || fnkVar.c()) {
                return true;
            }
        }
        return false;
    }

    public static void v(String str) {
        dwb dwbVar = new dwb(tn.ad("lateinit property ", str, " has not been initialized"));
        l(dwbVar, bff.class.getName());
        throw dwbVar;
    }

    public static void w(TextView textView, int i) {
        acw.bm(i);
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    public static final boolean x(int i, int i2) {
        return (i & i2) == i2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Serializable, java.lang.Double[]] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Serializable, java.lang.Float[]] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Serializable, java.lang.Long[]] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Serializable, java.lang.Integer[]] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Serializable, java.lang.Byte[]] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.Serializable, java.lang.Boolean[]] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.io.Serializable, java.lang.String[]] */
    public static final Serializable y(DataInputStream dataInputStream, byte b2) {
        if (b2 == 0) {
            return null;
        }
        if (b2 == 1) {
            return Boolean.valueOf(dataInputStream.readBoolean());
        }
        if (b2 == 2) {
            return Byte.valueOf(dataInputStream.readByte());
        }
        if (b2 == 3) {
            return Integer.valueOf(dataInputStream.readInt());
        }
        if (b2 == 4) {
            return Long.valueOf(dataInputStream.readLong());
        }
        if (b2 == 5) {
            return Float.valueOf(dataInputStream.readFloat());
        }
        if (b2 == 6) {
            return Double.valueOf(dataInputStream.readDouble());
        }
        if (b2 == 7) {
            return dataInputStream.readUTF();
        }
        int i = 0;
        if (b2 == 8) {
            int readInt = dataInputStream.readInt();
            ?? r0 = new Boolean[readInt];
            while (i < readInt) {
                r0[i] = Boolean.valueOf(dataInputStream.readBoolean());
                i++;
            }
            return r0;
        }
        if (b2 == 9) {
            int readInt2 = dataInputStream.readInt();
            ?? r02 = new Byte[readInt2];
            while (i < readInt2) {
                r02[i] = Byte.valueOf(dataInputStream.readByte());
                i++;
            }
            return r02;
        }
        if (b2 == 10) {
            int readInt3 = dataInputStream.readInt();
            ?? r03 = new Integer[readInt3];
            while (i < readInt3) {
                r03[i] = Integer.valueOf(dataInputStream.readInt());
                i++;
            }
            return r03;
        }
        if (b2 == 11) {
            int readInt4 = dataInputStream.readInt();
            ?? r04 = new Long[readInt4];
            while (i < readInt4) {
                r04[i] = Long.valueOf(dataInputStream.readLong());
                i++;
            }
            return r04;
        }
        if (b2 == 12) {
            int readInt5 = dataInputStream.readInt();
            ?? r05 = new Float[readInt5];
            while (i < readInt5) {
                r05[i] = Float.valueOf(dataInputStream.readFloat());
                i++;
            }
            return r05;
        }
        if (b2 == 13) {
            int readInt6 = dataInputStream.readInt();
            ?? r06 = new Double[readInt6];
            while (i < readInt6) {
                r06[i] = Double.valueOf(dataInputStream.readDouble());
                i++;
            }
            return r06;
        }
        if (b2 != 14) {
            throw new IllegalStateException(awf.ac(b2, "Unsupported type "));
        }
        int readInt7 = dataInputStream.readInt();
        ?? r1 = new String[readInt7];
        while (i < readInt7) {
            String readUTF = dataInputStream.readUTF();
            if (n(readUTF, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d")) {
                readUTF = null;
            }
            r1[i] = readUTF;
            i++;
        }
        return r1;
    }

    public static hdc z(dwg dwgVar, fw fwVar) {
        eek dkdVar;
        cwx ba = cwx.ba(fwVar.b());
        List g2 = evh.g(fwVar.a(), new gpn(13));
        ArrayList arrayList = new ArrayList(g2.size() + 1);
        arrayList.add(ba);
        arrayList.addAll(g2);
        cwx bf = cwx.bf("java.lang.invoke.MethodType");
        hdc hdcVar = new hdc(ayu.k(dwgVar, ve.h(dwgVar, bf), "methodType", arrayList, bf), eqp.STATIC, arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            cwx cwxVar = (cwx) it.next();
            cwxVar.getClass();
            if (cwxVar instanceof cff) {
                hay hayVar = hay.SGET;
                cwx b2 = cwxVar.f().b();
                dkdVar = new adz(hayVar, dwgVar.h.s(new dsj(ve.h(dwgVar, b2), "TYPE", b2)), 0);
            } else {
                dkdVar = new dkd(cwxVar);
            }
            hdcVar._an(gsh.aj(dkdVar));
        }
        return hdcVar;
    }
}
