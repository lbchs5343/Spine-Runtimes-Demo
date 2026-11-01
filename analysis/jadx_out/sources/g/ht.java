package g;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public abstract class ht {

    /* renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f19390a = new LinearInterpolator();

    public static Interpolator b(PointF pointF, PointF pointF2) {
        pointF.x = din.c(pointF.x, -1.0f, 1.0f);
        pointF.y = din.c(pointF.y, -100.0f, 100.0f);
        pointF2.x = din.c(pointF2.x, -1.0f, 1.0f);
        float c2 = din.c(pointF2.y, -100.0f, 100.0f);
        pointF2.y = c2;
        cqw cqwVar = ebx.f15269c;
        try {
            return new PathInterpolator(pointF.x, pointF.y, pointF2.x, c2);
        } catch (IllegalArgumentException e2) {
            return "The Path cannot loop back on itself.".equals(e2.getMessage()) ? new PathInterpolator(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT), pointF2.y) : new LinearInterpolator();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x00a8. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r26v4, types: [android.view.animation.Interpolator] */
    public static flj c(JsonReader jsonReader, cgf cgfVar, float f2, cce cceVar, boolean z, boolean z2) {
        Object obj;
        String str;
        Object obj2;
        char c2;
        PointF pointF;
        PointF pointF2;
        Object obj3;
        float f3;
        Interpolator b2;
        Interpolator interpolator;
        char c3;
        String str2;
        String str3;
        String str4;
        String str5;
        float f4;
        String str6;
        float f5;
        String str7;
        String str8 = "to";
        String str9 = "ti";
        String str10 = "t";
        String str11 = "o";
        String str12 = "i";
        String str13 = "h";
        String str14 = "e";
        Interpolator interpolator2 = f19390a;
        Object obj4 = null;
        if (!z || !z2) {
            Object obj5 = "ti";
            Object obj6 = "o";
            if (!z) {
                return new flj(cceVar.an(jsonReader, f2));
            }
            jsonReader.beginObject();
            PointF pointF3 = null;
            PointF pointF4 = null;
            Object obj7 = null;
            PointF pointF5 = null;
            PointF pointF6 = null;
            float f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            boolean z3 = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                nextName.getClass();
                switch (nextName.hashCode()) {
                    case 101:
                        obj = obj5;
                        str = str8;
                        obj2 = obj6;
                        if (nextName.equals("e")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 104:
                        obj = obj5;
                        str = str8;
                        obj2 = obj6;
                        if (nextName.equals("h")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 105:
                        obj = obj5;
                        str = str8;
                        obj2 = obj6;
                        if (nextName.equals("i")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 111:
                        obj = obj5;
                        obj2 = obj6;
                        str = str8;
                        if (nextName.equals(obj2)) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 115:
                        obj = obj5;
                        if (nextName.equals("s")) {
                            str = str8;
                            obj2 = obj6;
                            c2 = 4;
                            break;
                        }
                        str = str8;
                        obj2 = obj6;
                        c2 = 65535;
                        break;
                    case 116:
                        obj = obj5;
                        if (nextName.equals("t")) {
                            str = str8;
                            obj2 = obj6;
                            c2 = 5;
                            break;
                        }
                        str = str8;
                        obj2 = obj6;
                        c2 = 65535;
                        break;
                    case 3701:
                        obj = obj5;
                        if (nextName.equals(obj)) {
                            str = str8;
                            obj2 = obj6;
                            c2 = 6;
                            break;
                        }
                        str = str8;
                        obj2 = obj6;
                        c2 = 65535;
                        break;
                    case 3707:
                        if (nextName.equals(str8)) {
                            obj = obj5;
                            str = str8;
                            obj2 = obj6;
                            c2 = 7;
                            break;
                        }
                    default:
                        obj = obj5;
                        str = str8;
                        obj2 = obj6;
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                        obj7 = cceVar.an(jsonReader, f2);
                        break;
                    case 1:
                        if (jsonReader.nextInt() != 1) {
                            z3 = false;
                            break;
                        } else {
                            z3 = true;
                            break;
                        }
                    case 2:
                        pointF4 = cux.af(jsonReader, 1.0f);
                        break;
                    case 3:
                        pointF3 = cux.af(jsonReader, 1.0f);
                        break;
                    case 4:
                        obj4 = cceVar.an(jsonReader, f2);
                        break;
                    case 5:
                        f6 = (float) jsonReader.nextDouble();
                        break;
                    case 6:
                        pointF6 = cux.af(jsonReader, f2);
                        break;
                    case 7:
                        pointF5 = cux.af(jsonReader, f2);
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
                obj5 = obj;
                obj6 = obj2;
                str8 = str;
            }
            jsonReader.endObject();
            if (z3) {
                obj7 = obj4;
            } else if (pointF3 != null && pointF4 != null) {
                interpolator2 = b(pointF3, pointF4);
            }
            flj fljVar = new flj(cgfVar, obj4, obj7, interpolator2, f6, (Float) null);
            fljVar.f16977f = pointF5;
            fljVar.m = pointF6;
            return fljVar;
        }
        jsonReader.beginObject();
        PointF pointF7 = null;
        PointF pointF8 = null;
        PointF pointF9 = null;
        PointF pointF10 = null;
        Object obj8 = null;
        Object obj9 = null;
        PointF pointF11 = null;
        PointF pointF12 = null;
        PointF pointF13 = null;
        PointF pointF14 = null;
        boolean z4 = false;
        float f7 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        while (jsonReader.hasNext()) {
            String nextName2 = jsonReader.nextName();
            nextName2.getClass();
            switch (nextName2.hashCode()) {
                case 101:
                    if (nextName2.equals(str14)) {
                        c3 = 0;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 104:
                    if (nextName2.equals(str13)) {
                        c3 = 1;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 105:
                    if (nextName2.equals(str12)) {
                        c3 = 2;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 111:
                    if (nextName2.equals(str11)) {
                        c3 = 3;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 115:
                    if (nextName2.equals("s")) {
                        c3 = 4;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 116:
                    if (nextName2.equals(str10)) {
                        c3 = 5;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 3701:
                    if (nextName2.equals(str9)) {
                        c3 = 6;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 3707:
                    if (nextName2.equals("to")) {
                        c3 = 7;
                        break;
                    }
                    c3 = 65535;
                    break;
                default:
                    c3 = 65535;
                    break;
            }
            String str15 = "y";
            String str16 = str14;
            switch (c3) {
                case 0:
                    str2 = str13;
                    obj9 = cceVar.an(jsonReader, f2);
                    str14 = str16;
                    str13 = str2;
                    break;
                case 1:
                    String str17 = str9;
                    PointF pointF15 = pointF7;
                    str3 = str11;
                    str4 = str12;
                    str5 = str13;
                    String str18 = str10;
                    z4 = jsonReader.nextInt() == 1;
                    pointF7 = pointF15;
                    str9 = str17;
                    str10 = str18;
                    str14 = str16;
                    str12 = str4;
                    str13 = str5;
                    str11 = str3;
                    break;
                case 2:
                    String str19 = str9;
                    PointF pointF16 = pointF7;
                    str3 = str11;
                    str4 = str12;
                    str5 = str13;
                    if (jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                        jsonReader.beginObject();
                        float f8 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        float f9 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        float f10 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        float f11 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        while (jsonReader.hasNext()) {
                            String nextName3 = jsonReader.nextName();
                            nextName3.getClass();
                            if (nextName3.equals("x")) {
                                String str20 = str10;
                                JsonToken peek = jsonReader.peek();
                                JsonToken jsonToken = JsonToken.NUMBER;
                                if (peek == jsonToken) {
                                    str6 = str15;
                                    f10 = (float) jsonReader.nextDouble();
                                    f8 = f10;
                                } else {
                                    str6 = str15;
                                    jsonReader.beginArray();
                                    float nextDouble = (float) jsonReader.nextDouble();
                                    if (jsonReader.peek() == jsonToken) {
                                        f5 = nextDouble;
                                        f10 = (float) jsonReader.nextDouble();
                                    } else {
                                        f5 = nextDouble;
                                        f10 = f5;
                                    }
                                    jsonReader.endArray();
                                    f8 = f5;
                                }
                                str10 = str20;
                                str15 = str6;
                            } else if (nextName3.equals(str15)) {
                                JsonToken peek2 = jsonReader.peek();
                                JsonToken jsonToken2 = JsonToken.NUMBER;
                                if (peek2 == jsonToken2) {
                                    f11 = (float) jsonReader.nextDouble();
                                    f9 = f11;
                                } else {
                                    jsonReader.beginArray();
                                    String str21 = str10;
                                    float nextDouble2 = (float) jsonReader.nextDouble();
                                    if (jsonReader.peek() == jsonToken2) {
                                        f4 = nextDouble2;
                                        nextDouble2 = (float) jsonReader.nextDouble();
                                    } else {
                                        f4 = nextDouble2;
                                    }
                                    jsonReader.endArray();
                                    float f12 = f4;
                                    f11 = nextDouble2;
                                    f9 = f12;
                                    str10 = str21;
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        PointF pointF17 = new PointF(f8, f9);
                        PointF pointF18 = new PointF(f10, f11);
                        jsonReader.endObject();
                        pointF7 = pointF16;
                        str9 = str19;
                        pointF11 = pointF17;
                        pointF12 = pointF18;
                    } else {
                        pointF8 = cux.af(jsonReader, f2);
                        pointF7 = pointF16;
                        str9 = str19;
                    }
                    str14 = str16;
                    str12 = str4;
                    str13 = str5;
                    str11 = str3;
                    break;
                case 3:
                    str7 = str12;
                    str2 = str13;
                    if (jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                        jsonReader.beginObject();
                        float f13 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        float f14 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        float f15 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        float f16 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        while (jsonReader.hasNext()) {
                            String str22 = str11;
                            String nextName4 = jsonReader.nextName();
                            nextName4.getClass();
                            if (nextName4.equals("x")) {
                                String str23 = str9;
                                PointF pointF19 = pointF7;
                                JsonToken peek3 = jsonReader.peek();
                                JsonToken jsonToken3 = JsonToken.NUMBER;
                                if (peek3 == jsonToken3) {
                                    f15 = (float) jsonReader.nextDouble();
                                    pointF7 = pointF19;
                                    str9 = str23;
                                    f13 = f15;
                                } else {
                                    jsonReader.beginArray();
                                    f13 = (float) jsonReader.nextDouble();
                                    f15 = jsonReader.peek() == jsonToken3 ? (float) jsonReader.nextDouble() : f13;
                                    jsonReader.endArray();
                                    pointF7 = pointF19;
                                    str9 = str23;
                                }
                            } else if (nextName4.equals("y")) {
                                JsonToken peek4 = jsonReader.peek();
                                JsonToken jsonToken4 = JsonToken.NUMBER;
                                if (peek4 == jsonToken4) {
                                    f16 = (float) jsonReader.nextDouble();
                                    f14 = f16;
                                } else {
                                    jsonReader.beginArray();
                                    String str24 = str9;
                                    PointF pointF20 = pointF7;
                                    float nextDouble3 = (float) jsonReader.nextDouble();
                                    if (jsonReader.peek() == jsonToken4) {
                                        f14 = nextDouble3;
                                        f16 = (float) jsonReader.nextDouble();
                                    } else {
                                        f14 = nextDouble3;
                                        f16 = f14;
                                    }
                                    jsonReader.endArray();
                                    pointF7 = pointF20;
                                    str9 = str24;
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                            str11 = str22;
                        }
                        PointF pointF21 = new PointF(f13, f14);
                        pointF10 = new PointF(f15, f16);
                        jsonReader.endObject();
                        pointF9 = pointF21;
                    } else {
                        pointF7 = cux.af(jsonReader, f2);
                    }
                    str14 = str16;
                    str12 = str7;
                    str13 = str2;
                    break;
                case 4:
                    obj8 = cceVar.an(jsonReader, f2);
                    str14 = str16;
                    break;
                case 5:
                    str7 = str12;
                    str2 = str13;
                    f7 = (float) jsonReader.nextDouble();
                    str14 = str16;
                    str12 = str7;
                    str13 = str2;
                    break;
                case 6:
                    pointF14 = cux.af(jsonReader, f2);
                    str14 = str16;
                    break;
                case 7:
                    pointF13 = cux.af(jsonReader, f2);
                    str14 = str16;
                    break;
                default:
                    jsonReader.skipValue();
                    str14 = str16;
                    break;
            }
        }
        PointF pointF22 = pointF7;
        jsonReader.endObject();
        if (z4) {
            obj9 = obj8;
        } else if (pointF22 != null && pointF8 != null) {
            interpolator2 = b(pointF22, pointF8);
        } else if (pointF9 != null && pointF10 != null && (pointF = pointF11) != null && (pointF2 = pointF12) != null) {
            Interpolator b3 = b(pointF9, pointF);
            obj3 = obj9;
            f3 = f7;
            b2 = b(pointF10, pointF2);
            interpolator = null;
            obj4 = b3;
            flj fljVar2 = (obj4 != null || b2 == null) ? new flj(cgfVar, obj8, obj3, interpolator, f3, (Float) null) : new flj(cgfVar, obj8, obj3, (Interpolator) obj4, b2, f3);
            fljVar2.f16977f = pointF13;
            fljVar2.m = pointF14;
            return fljVar2;
        }
        obj3 = obj9;
        f3 = f7;
        interpolator = interpolator2;
        b2 = null;
        flj fljVar22 = (obj4 != null || b2 == null) ? new flj(cgfVar, obj8, obj3, interpolator, f3, (Float) null) : new flj(cgfVar, obj8, obj3, (Interpolator) obj4, b2, f3);
        fljVar22.f16977f = pointF13;
        fljVar22.m = pointF14;
        return fljVar22;
    }
}
