package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import android.util.Xml;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class frn {

    /* renamed from: a, reason: collision with root package name */
    public float f17296a;

    /* renamed from: b, reason: collision with root package name */
    public String f17297b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17298c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17299d;

    /* renamed from: e, reason: collision with root package name */
    public dwj f17300e;

    /* renamed from: f, reason: collision with root package name */
    public int f17301f;

    /* renamed from: g, reason: collision with root package name */
    public int f17302g;

    public frn(frn frnVar, Object obj) {
        frnVar.getClass();
        this.f17300e = frnVar.f17300e;
        i(obj);
    }

    public static void h(Context context, XmlResourceParser xmlResourceParser, HashMap hashMap) {
        dwj dwjVar;
        Object valueOf;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), bfv.f11475b);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        dwj dwjVar2 = null;
        boolean z = false;
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == 10) {
                str = obtainStyledAttributes.getString(index);
                z = true;
            } else if (index == 1) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                dwjVar2 = dwj.BOOLEAN_TYPE;
            } else {
                if (index == 3) {
                    dwjVar = dwj.COLOR_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == 2) {
                    dwjVar = dwj.COLOR_DRAWABLE_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == 7) {
                    dwjVar = dwj.DIMENSION_TYPE;
                    valueOf = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT), context.getResources().getDisplayMetrics()));
                } else if (index == 4) {
                    dwjVar = dwj.DIMENSION_TYPE;
                    valueOf = Float.valueOf(obtainStyledAttributes.getDimension(index, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
                } else if (index == 5) {
                    dwjVar = dwj.FLOAT_TYPE;
                    valueOf = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == 6) {
                    dwjVar = dwj.INT_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                } else if (index == 9) {
                    dwjVar = dwj.STRING_TYPE;
                    valueOf = obtainStyledAttributes.getString(index);
                } else if (index == 8) {
                    dwjVar = dwj.REFERENCE_TYPE;
                    int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId == -1) {
                        resourceId = obtainStyledAttributes.getInt(index, -1);
                    }
                    valueOf = Integer.valueOf(resourceId);
                }
                Object obj2 = valueOf;
                dwjVar2 = dwjVar;
                obj = obj2;
            }
        }
        if (str != null && obj != null) {
            frn frnVar = new frn();
            frnVar.f17300e = dwjVar2;
            frnVar.f17298c = z;
            frnVar.i(obj);
            hashMap.put(str, frnVar);
        }
        obtainStyledAttributes.recycle();
    }

    public final void i(Object obj) {
        switch (this.f17300e.ordinal()) {
            case 0:
            case 7:
                this.f17301f = ((Integer) obj).intValue();
                break;
            case 1:
                this.f17296a = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f17302g = ((Integer) obj).intValue();
                break;
            case 4:
                this.f17297b = (String) obj;
                break;
            case 5:
                this.f17299d = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.f17296a = ((Float) obj).floatValue();
                break;
        }
    }
}
