package g;

import android.app.Activity;
import android.app.Dialog;
import android.app.KeyguardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfwf;
import com.google.android.gms.internal.ads.zzfxd;
import com.google.android.gms.internal.ads.zzgzm;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class ckd {

    /* renamed from: d, reason: collision with root package name */
    public static Context f13017d;

    /* renamed from: f, reason: collision with root package name */
    public static Boolean f13019f;

    /* renamed from: g, reason: collision with root package name */
    public static final float[][] f13020g = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};

    /* renamed from: b, reason: collision with root package name */
    public static final float[][] f13015b = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* renamed from: c, reason: collision with root package name */
    public static final float[] f13016c = {95.047f, 100.0f, 108.883f};

    /* renamed from: e, reason: collision with root package name */
    public static final float[][] f13018e = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};
    public static final hy h = new hy("NULL", 1);

    /* renamed from: a, reason: collision with root package name */
    public static final hy f13014a = new hy("UNINITIALIZED", 1);

    public static eqn aa(JsonReader jsonReader, cgf cgfVar) {
        jsonReader.beginObject();
        fc fcVar = null;
        cnc cncVar = null;
        cnc cncVar2 = null;
        boolean z = false;
        while (jsonReader.peek() != JsonToken.END_OBJECT) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            switch (nextName) {
                case "k":
                    fcVar = be(jsonReader, cgfVar);
                    break;
                case "x":
                    if (jsonReader.peek() != JsonToken.STRING) {
                        cncVar = bff.am(jsonReader, cgfVar, true);
                        break;
                    } else {
                        z = true;
                        jsonReader.skipValue();
                        break;
                    }
                case "y":
                    if (jsonReader.peek() != JsonToken.STRING) {
                        cncVar2 = bff.am(jsonReader, cgfVar, true);
                        break;
                    } else {
                        z = true;
                        jsonReader.skipValue();
                        break;
                    }
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (z) {
            cgfVar.t("Lottie doesn't support expressions.");
        }
        return fcVar != null ? fcVar : new fph(cncVar, cncVar2);
    }

    public static int ab(float f2) {
        if (f2 < 1.0f) {
            return -16777216;
        }
        if (f2 > 99.0f) {
            return -1;
        }
        float f3 = (f2 + 16.0f) / 116.0f;
        float f4 = f2 > 8.0f ? f3 * f3 * f3 : f2 / 903.2963f;
        float f5 = f3 * f3 * f3;
        boolean z = f5 > 0.008856452f;
        float f6 = z ? f5 : ((f3 * 116.0f) - 16.0f) / 903.2963f;
        if (!z) {
            f5 = ((f3 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = f13016c;
        return afr.d(f6 * fArr[0], f4 * fArr[1], f5 * fArr[2]);
    }

    public static String ac(Context context, ComponentName componentName) {
        String string;
        PackageManager packageManager = context.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i >= 29 ? 269222528 : i >= 24 ? 787072 : MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static /* bridge */ /* synthetic */ void ad(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) {
        if (!s(b3)) {
            if ((((b3 + 112) + (b2 << 28)) >> 30) == 0 && !s(b4) && !s(b5)) {
                int i2 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
                cArr[i] = (char) ((i2 >>> 10) + 55232);
                cArr[i + 1] = (char) ((i2 & 1023) + 56320);
                return;
            }
        }
        throw new zzgzm("Protocol message had invalid UTF-8.");
    }

    public static boolean ae(int i) {
        zzbce zzbceVar = zzbcn.zzdA;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            return ((Boolean) edtVar.f15379d.zza(zzbcn.zzdB)).booleanValue() || i <= 15299999;
        }
        return true;
    }

    public static void af(String str) {
        char c2;
        int hashCode = str.hashCode();
        if (hashCode == 3075958) {
            if (str.equals("dark")) {
                c2 = 1;
            }
            c2 = 65535;
        } else if (hashCode != 102970646) {
            if (hashCode == 1033296509 && str.equals("follow_system")) {
                c2 = 2;
            }
            c2 = 65535;
        } else {
            if (str.equals("light")) {
                c2 = 0;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            dkn.j(1);
        } else if (c2 != 1) {
            dkn.j(-1);
        } else {
            dkn.j(2);
        }
    }

    public static Boolean ag(float f2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(f2 > ((float) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(f2 > ((float) number.longValue()));
        }
        if (number instanceof Float) {
            return Boolean.valueOf(f2 > number.floatValue());
        }
        if (number instanceof Double) {
            return Boolean.valueOf(((double) f2) > number.doubleValue());
        }
        throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
    }

    public static boolean ah(Context context, zzfet zzfetVar) {
        if (!zzfetVar.zzN) {
            return false;
        }
        zzbce zzbceVar = zzbcn.zzhG;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            return ((Boolean) edtVar.f15379d.zza(zzbcn.zzhJ)).booleanValue();
        }
        String str = (String) edtVar.f15379d.zza(zzbcn.zzhH);
        if (!str.isEmpty() && context != null) {
            String packageName = context.getPackageName();
            Iterator it = zzfxd.zzb(zzfwf.zzc(';')).zzc(str).iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equals(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Boolean ai(Object obj, Number number) {
        if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
            int intValue = ((Number) obj).intValue();
            if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return Boolean.valueOf(intValue > number.intValue());
            }
            if (number instanceof Long) {
                return Boolean.valueOf(((long) intValue) > number.longValue());
            }
            if (number instanceof Float) {
                return Boolean.valueOf(((float) intValue) > number.floatValue());
            }
            if (number instanceof Double) {
                return Boolean.valueOf(((double) intValue) > number.doubleValue());
            }
            throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
        }
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return Boolean.valueOf(longValue > ((long) number.intValue()));
            }
            if (number instanceof Long) {
                return Boolean.valueOf(longValue > number.longValue());
            }
            if (number instanceof Float) {
                return Boolean.valueOf(((float) longValue) > number.floatValue());
            }
            if (number instanceof Double) {
                return Boolean.valueOf(((double) longValue) > number.doubleValue());
            }
            throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
        }
        if (obj instanceof Float) {
            return ag(((Float) obj).floatValue(), number);
        }
        if (!(obj instanceof Double)) {
            if (!(obj instanceof String)) {
                throw new UnsupportedOperationException(obj.getClass().getName().concat("This type of addition operation is not supported"));
            }
            try {
                return ag(Float.parseFloat((String) obj), number);
            } catch (NumberFormatException unused) {
                throw new UnsupportedOperationException(obj.getClass().getName().concat("This type of addition operation is not supported"));
            }
        }
        double doubleValue = ((Double) obj).doubleValue();
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(doubleValue > ((double) number.intValue()));
        }
        if (number instanceof Long) {
            return Boolean.valueOf(doubleValue > ((double) number.longValue()));
        }
        if (number instanceof Float) {
            return Boolean.valueOf(doubleValue > ((double) number.floatValue()));
        }
        if (number instanceof Double) {
            return Boolean.valueOf(doubleValue > number.doubleValue());
        }
        throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
    }

    public static void aj(String str) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static ghr ak(cmv cmvVar, gqc gqcVar) {
        gkr gkrVar = cmvVar.f13144g;
        char ap = (char) gqcVar.ap();
        if (ap == '@') {
            return new ghr(dnd.ENCODED_ANNOTATION, cfy.c(any.RUNTIME, cmvVar, gqcVar));
        }
        if (ap == 'F') {
            dnd dndVar = dnd.ENCODED_FLOAT;
            gkrVar.k(gqcVar.ai());
            return new ghr(dndVar, Float.valueOf(Float.intBitsToFloat(((gqc) gkrVar.f18322b).bc())));
        }
        if (ap == 'S') {
            dnd dndVar2 = dnd.ENCODED_SHORT;
            gkrVar.k(gqcVar.ai());
            return new ghr(dndVar2, Short.valueOf((short) ((gqc) gkrVar.f18322b).af()));
        }
        if (ap == 'c') {
            return new ghr(dnd.ENCODED_TYPE, gkrVar.r(gqcVar.ai()));
        }
        if (ap == 'e') {
            String r = gkrVar.r(gqcVar.ai());
            String r2 = gkrVar.r(gqcVar.ai());
            dnd dndVar3 = dnd.ENCODED_ENUM;
            byv byvVar = new byv();
            byvVar.f12470a = r;
            byvVar.f12471b = r2;
            byvVar.f12472c = r;
            return new ghr(dndVar3, byvVar);
        }
        if (ap == 's') {
            return new ghr(dnd.ENCODED_STRING, gkrVar.r(gqcVar.ai()));
        }
        if (ap == 'I') {
            dnd dndVar4 = dnd.ENCODED_INT;
            gkrVar.k(gqcVar.ai());
            return new ghr(dndVar4, Integer.valueOf(((gqc) gkrVar.f18322b).af()));
        }
        if (ap == 'J') {
            dnd dndVar5 = dnd.ENCODED_LONG;
            gkrVar.k(gqcVar.ai());
            gqc gqcVar2 = (gqc) gkrVar.f18322b;
            return new ghr(dndVar5, Long.valueOf((gqcVar2.af() << 32) | (gqcVar2.bc() & 4294967295L)));
        }
        if (ap == 'Z') {
            dnd dndVar6 = dnd.ENCODED_BOOLEAN;
            gkrVar.k(gqcVar.ai());
            return new ghr(dndVar6, Boolean.valueOf(1 == ((gqc) gkrVar.f18322b).af()));
        }
        if (ap == '[') {
            int ai = gqcVar.ai();
            ArrayList arrayList = new ArrayList(ai);
            for (int i = 0; i < ai; i++) {
                arrayList.add(ak(cmvVar, gqcVar));
            }
            return new ghr(dnd.ENCODED_ARRAY, arrayList);
        }
        switch (ap) {
            case 'B':
                dnd dndVar7 = dnd.ENCODED_BYTE;
                gkrVar.k(gqcVar.ai());
                return new ghr(dndVar7, Byte.valueOf((byte) ((gqc) gkrVar.f18322b).af()));
            case 'C':
                dnd dndVar8 = dnd.ENCODED_CHAR;
                gkrVar.k(gqcVar.ai());
                return new ghr(dndVar8, Character.valueOf((char) ((gqc) gkrVar.f18322b).af()));
            case 'D':
                dnd dndVar9 = dnd.ENCODED_DOUBLE;
                gkrVar.k(gqcVar.ai());
                return new ghr(dndVar9, Double.valueOf(Double.longBitsToDouble(((gqc) gkrVar.f18322b).ax())));
            default:
                throw new cyf("Unknown element value tag: " + ap);
        }
    }

    public static void al(Dialog dialog) {
        if (dialog.getWindow() == null) {
            return;
        }
        Context context = dialog.getContext();
        dialog.getWindow().setLayout(Math.min(context.getResources().getDisplayMetrics().widthPixels, Math.round(context.getResources().getDisplayMetrics().density * 608.0f)), -2);
    }

    public static int am(aqz aqzVar, bjd bjdVar, View view, View view2, androidx.recyclerview.widget.b bVar, boolean z) {
        if (bVar.et() == 0 || aqzVar.p() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(androidx.recyclerview.widget.b.ed(view) - androidx.recyclerview.widget.b.ed(view2)) + 1;
        }
        return Math.min(bjdVar.g(), bjdVar.o(view2) - bjdVar.k(view));
    }

    public static void an(String str, boolean z) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(str));
        }
    }

    public static JSONObject ao(Context context, Map map, Map map2, View view, ImageView.ScaleType scaleType) {
        int[] iArr;
        int measuredWidth;
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map != null && view != null) {
            int i = 2;
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr2);
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                View view2 = (View) ((WeakReference) entry.getValue()).get();
                if (view2 != null) {
                    int[] iArr3 = new int[i];
                    view2.getLocationOnScreen(iArr3);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    Iterator it2 = it;
                    try {
                        measuredWidth = view2.getMeasuredWidth();
                        iArr = iArr2;
                    } catch (JSONException unused) {
                        iArr = iArr2;
                    }
                    try {
                        cbv cbvVar = cbv.f12612a;
                        jSONObject4.put(MediaFormat.KEY_WIDTH, cbvVar.f12615d.s(context, measuredWidth));
                        jSONObject4.put(MediaFormat.KEY_HEIGHT, cbvVar.f12615d.s(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", cbvVar.f12615d.s(context, iArr3[0] - iArr[0]));
                        jSONObject4.put("y", cbvVar.f12615d.s(context, iArr3[1] - iArr[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = bh(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put(MediaFormat.KEY_WIDTH, 0);
                            jSONObject.put(MediaFormat.KEY_HEIGHT, 0);
                            jSONObject.put("x", cbvVar.f12615d.s(context, iArr3[0] - iArr[0]));
                            jSONObject.put("y", cbvVar.f12615d.s(context, iArr3[1] - iArr[1]));
                            jSONObject.put("relative_to", "ad_view");
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (((String) entry.getKey()).equals("3010")) {
                            zzbce zzbceVar = zzbcn.zzhD;
                            edt edtVar = edt.f15376a;
                            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                                jSONObject3.put("mediaview_graphics_matrix", view2.getMatrix().toShortString());
                            }
                            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzhE)).booleanValue()) {
                                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                                jSONObject3.put("view_width_layout_type", bb(layoutParams.width) - 1);
                                jSONObject3.put("view_height_layout_type", bb(layoutParams.height) - 1);
                            }
                            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzhF)).booleanValue()) {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(Integer.valueOf(view2.getId()));
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    arrayList.add(Integer.valueOf(((View) parent).getId()));
                                }
                                jSONObject3.put("view_path", TextUtils.join("/", arrayList));
                            }
                            if (scaleType != null) {
                                jSONObject3.put("mediaview_scale_type", scaleType.ordinal());
                            }
                        }
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            jSONObject3.put("font_size", textView.getTextSize());
                            jSONObject3.put("text", textView.getText());
                        }
                        jSONObject3.put("is_clickable", map2 != null && map2.containsKey(entry.getKey()) && view2.isClickable());
                        jSONObject2.put((String) entry.getKey(), jSONObject3);
                    } catch (JSONException unused2) {
                        agd.b("Unable to get asset views information");
                        it = it2;
                        iArr2 = iArr;
                        i = 2;
                    }
                    it = it2;
                    iArr2 = iArr;
                    i = 2;
                }
            }
        }
        return jSONObject2;
    }

    public static JSONObject ap(String str, Context context, Point point, Point point2) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e2) {
            e = e2;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                int i = point2.x;
                cbv cbvVar = cbv.f12612a;
                jSONObject3.put("x", cbvVar.f12615d.s(context, i));
                jSONObject3.put("y", cbvVar.f12615d.s(context, point2.y));
                jSONObject3.put("start_x", cbvVar.f12615d.s(context, point.x));
                jSONObject3.put("start_y", cbvVar.f12615d.s(context, point.y));
                jSONObject2 = jSONObject3;
            } catch (JSONException e3) {
                agd.f("Error occurred while putting signals into JSON object.", e3);
            }
            jSONObject.put("click_point", jSONObject2);
            jSONObject.put("asset_id", str);
            return jSONObject;
        } catch (Exception e4) {
            e = e4;
            jSONObject2 = jSONObject;
            agd.f("Error occurred while grabbing click signals.", e);
            return jSONObject2;
        }
    }

    public static void aq() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            String name = myLooper.getThread().getName();
            if (name == "GoogleApiHandler" || (name != null && name.equals("GoogleApiHandler"))) {
                throw new IllegalStateException("Must not be called on GoogleApiHandler thread.");
            }
        }
    }

    public static void ar(String str, boolean z) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static JSONObject as(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhC)).booleanValue()) {
                    esy esyVar = ti.f20033a.z;
                    ViewParent parent = view.getParent();
                    while (parent != null && !(parent instanceof ScrollView)) {
                        parent = parent.getParent();
                    }
                    jSONObject.put("contained_in_scroll_view", parent != null);
                    return jSONObject;
                }
                esy esyVar2 = ti.f20033a.z;
                ViewParent parent2 = view.getParent();
                while (parent2 != null && !(parent2 instanceof AdapterView)) {
                    parent2 = parent2.getParent();
                }
                if ((parent2 == null ? -1 : ((AdapterView) parent2).getPositionForView(view)) == -1) {
                    r2 = false;
                }
                jSONObject.put("contained_in_scroll_view", r2);
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    public static void at(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static int au(aqz aqzVar, bjd bjdVar, View view, View view2, androidx.recyclerview.widget.b bVar, boolean z, boolean z2) {
        if (bVar.et() == 0 || aqzVar.p() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (aqzVar.p() - Math.max(androidx.recyclerview.widget.b.ed(view), androidx.recyclerview.widget.b.ed(view2))) - 1) : Math.max(0, Math.min(androidx.recyclerview.widget.b.ed(view), androidx.recyclerview.widget.b.ed(view2)));
        if (z) {
            return Math.round((max * (Math.abs(bjdVar.o(view2) - bjdVar.k(view)) / (Math.abs(androidx.recyclerview.widget.b.ed(view) - androidx.recyclerview.widget.b.ed(view2)) + 1))) + (bjdVar.p() - bjdVar.k(view)));
        }
        return max;
    }

    public static Intent av(ub ubVar) {
        Intent parentActivityIntent = ubVar.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String ac = ac(ubVar, ubVar.getComponentName());
            if (ac == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(ubVar, ac);
            try {
                return ac(ubVar, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + ac + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static bdf aw(String str, String str2) {
        aj ajVar = new aj(str, str2);
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(aj.class);
        Collections.addAll(hashSet, new Class[0]);
        return new bdf(new HashSet(hashSet), new HashSet(hashSet2), 0, 1, new aoi(8, ajVar), hashSet3);
    }

    public static float ax(int i) {
        float f2 = i / 255.0f;
        return (f2 <= 0.04045f ? f2 / 12.92f : (float) Math.pow((f2 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    public static /* bridge */ /* synthetic */ void ay(byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (!s(b3)) {
            if (b2 == -32) {
                if (b3 >= -96) {
                    b2 = -32;
                }
            }
            if (b2 == -19) {
                if (b3 < -96) {
                    b2 = -19;
                }
            }
            if (!s(b4)) {
                cArr[i] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
                return;
            }
        }
        throw new zzgzm("Protocol message had invalid UTF-8.");
    }

    public static JSONObject az(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                esy esyVar = ti.f20033a.z;
                jSONObject.put("can_show_on_lock_screen", esy.t(view));
                boolean z = false;
                if (context != null) {
                    Object systemService = context.getSystemService("keyguard");
                    KeyguardManager keyguardManager = (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
                    if (keyguardManager != null && keyguardManager.isKeyguardLocked()) {
                        z = true;
                    }
                }
                jSONObject.put("is_keyguard_locked", z);
                return jSONObject;
            } catch (JSONException unused) {
                agd.b("Unable to get lock screen information");
            }
        }
        return jSONObject;
    }

    public static void ba(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static int bb(int i) {
        if (i != -2) {
            return i != -1 ? 2 : 3;
        }
        return 4;
    }

    public static HashMap bc(InputStream inputStream) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
            try {
                HashMap hashMap = new HashMap();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return hashMap;
                    }
                    int parseInt = Integer.parseInt(readLine.substring(0, 8), 16);
                    hashMap.put(Integer.valueOf(parseInt), readLine.substring(9));
                }
            } finally {
            }
        } catch (Exception e2) {
            throw new gck("Failed to read res-map file", e2);
        }
    }

    public static synchronized boolean bd(Context context) {
        boolean isInstantApp;
        Boolean bool;
        synchronized (ckd.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = f13017d;
            if (context2 != null && (bool = f13019f) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            f13019f = null;
            if (dyd.bj()) {
                isInstantApp = applicationContext.getPackageManager().isInstantApp();
                f13019f = Boolean.valueOf(isInstantApp);
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f13019f = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    f13019f = Boolean.FALSE;
                }
            }
            f13017d = applicationContext;
            return f13019f.booleanValue();
        }
    }

    public static fc be(JsonReader jsonReader, cgf cgfVar) {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                JsonReader jsonReader2 = jsonReader;
                cgf cgfVar2 = cgfVar;
                arrayList.add(new epo(cgfVar2, ht.c(jsonReader2, cgfVar2, ebx.h(), acq.bf, jsonReader.peek() == JsonToken.BEGIN_OBJECT, false)));
                jsonReader = jsonReader2;
                cgfVar = cgfVar2;
            }
            jsonReader.endArray();
            ffb.ae(arrayList);
        } else {
            arrayList.add(new flj(cux.af(jsonReader, ebx.h())));
        }
        return new fc(23, arrayList);
    }

    public static void bf(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
    }

    public static int bg(aqz aqzVar, bjd bjdVar, View view, View view2, androidx.recyclerview.widget.b bVar, boolean z) {
        if (bVar.et() == 0 || aqzVar.p() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return aqzVar.p();
        }
        return (int) (((bjdVar.o(view2) - bjdVar.k(view)) / (Math.abs(androidx.recyclerview.widget.b.ed(view) - androidx.recyclerview.widget.b.ed(view2)) + 1)) * aqzVar.p());
    }

    public static JSONObject bh(Context context, Rect rect) {
        JSONObject jSONObject = new JSONObject();
        int i = rect.right - rect.left;
        cbv cbvVar = cbv.f12612a;
        jSONObject.put(MediaFormat.KEY_WIDTH, cbvVar.f12615d.s(context, i));
        int i2 = rect.bottom - rect.top;
        mx mxVar = cbvVar.f12615d;
        jSONObject.put(MediaFormat.KEY_HEIGHT, mxVar.s(context, i2));
        jSONObject.put("x", mxVar.s(context, rect.left));
        jSONObject.put("y", mxVar.s(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    public static bdf i(String str, bfb bfbVar) {
        Class[] clsArr = new Class[0];
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(aj.class);
        for (Class cls : clsArr) {
            bff.aj(cls, "Null interface");
        }
        Collections.addAll(hashSet, clsArr);
        djj djjVar = new djj(Context.class, 1, 0);
        if (hashSet.contains(djjVar.f14276a)) {
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }
        hashSet2.add(djjVar);
        return new bdf(new HashSet(hashSet), new HashSet(hashSet2), 0, 1, new ftr(str, 1, bfbVar), hashSet3);
    }

    public static void j(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void k(Object obj) {
        if (obj == null) {
            throw new NullPointerException("null reference");
        }
    }

    public static final boolean l(String str) {
        bff.p(str, "method");
        return (str.equals("GET") || str.equals("HEAD")) ? false : true;
    }

    public static float m() {
        return ((float) Math.pow((50.0f + 16.0d) / 116.0d, 3.0d)) * 100.0f;
    }

    public static final void n(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                cux.ag(th, th2);
            }
        }
    }

    public static aoz o(Activity activity) {
        gmn z = z(activity);
        aoz aozVar = new aoz(((die) z.z).i, 0);
        aozVar.requestWindowFeature(1);
        if (aozVar.getWindow() != null) {
            aozVar.getWindow().setBackgroundDrawable(new InsetDrawable((Drawable) z.h, Math.round(activity.getResources().getDisplayMetrics().density * 24.0f)));
            aozVar.getWindow().addFlags(2);
        }
        return aozVar;
    }

    public static /* bridge */ /* synthetic */ void p(byte b2, byte b3, char[] cArr, int i) {
        if (b2 < -62 || s(b3)) {
            throw new zzgzm("Protocol message had invalid UTF-8.");
        }
        cArr[i] = (char) (((b2 & 31) << 6) | (b3 & 63));
    }

    public static WindowManager.LayoutParams q() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzhI)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public static PorterDuff.Mode r(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static boolean s(byte b2) {
        return b2 > -65;
    }

    public static void t(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void u(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static Intent v(ub ubVar, ComponentName componentName) {
        String ac = ac(ubVar, componentName);
        if (ac == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), ac);
        return ac(ubVar, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static void w(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void x(Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            throw new IllegalStateException(tn.r("Must be called on ", handler.getLooper().getThread().getName(), " thread, but got ", myLooper != null ? myLooper.getThread().getName() : "null current looper", "."));
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:3|(7:4|5|(5:8|9|10|11|6)|57|58|(1:60)(1:63)|61)|14|(7:49|50|17|18|19|20|(8:22|(6:26|27|(2:29|(1:31)(1:40))(1:41)|32|33|(2:35|36))|42|27|(0)(0)|32|33|(0))(8:43|(6:45|27|(0)(0)|32|33|(0))|42|27|(0)(0)|32|33|(0)))|16|17|18|19|20|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0142, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x014e, code lost:
    
        g.agd.f("Could not log native template signal to JSON", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0165 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0149 A[Catch: JSONException -> 0x0142, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0142, blocks: (B:19:0x0113, B:31:0x013e, B:40:0x0144, B:41:0x0149), top: B:18:0x0113 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject y(Context context, View view) {
        ViewParent parent;
        String str;
        int hashCode;
        char c2;
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (view != null) {
            try {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                int[] iArr2 = {view.getMeasuredWidth(), view.getMeasuredHeight()};
                for (ViewParent parent2 = view.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    ViewGroup viewGroup = (ViewGroup) parent2;
                    try {
                        iArr2[0] = Math.min(viewGroup.getMeasuredWidth(), iArr2[0]);
                        iArr2[1] = Math.min(viewGroup.getMeasuredHeight(), iArr2[1]);
                    } catch (Exception unused) {
                        agd.b("Unable to get native ad view bounding box");
                        parent = view.getParent();
                        if (parent != null) {
                        }
                        str = "";
                        hashCode = str.hashCode();
                        if (hashCode == -2066603854) {
                        }
                    }
                }
                JSONObject jSONObject3 = new JSONObject();
                int measuredWidth = view.getMeasuredWidth();
                cbv cbvVar = cbv.f12612a;
                mx mxVar = cbvVar.f12615d;
                mx mxVar2 = cbvVar.f12615d;
                jSONObject3.put(MediaFormat.KEY_WIDTH, mxVar.s(context, measuredWidth));
                jSONObject3.put(MediaFormat.KEY_HEIGHT, mxVar2.s(context, view.getMeasuredHeight()));
                jSONObject3.put("x", mxVar2.s(context, iArr[0]));
                jSONObject3.put("y", mxVar2.s(context, iArr[1]));
                jSONObject3.put("maximum_visible_width", mxVar2.s(context, iArr2[0]));
                jSONObject3.put("maximum_visible_height", mxVar2.s(context, iArr2[1]));
                jSONObject3.put("relative_to", "window");
                jSONObject2.put("frame", jSONObject3);
                Rect rect = new Rect();
                if (view.getGlobalVisibleRect(rect)) {
                    jSONObject = bh(context, rect);
                } else {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(MediaFormat.KEY_WIDTH, 0);
                    jSONObject4.put(MediaFormat.KEY_HEIGHT, 0);
                    jSONObject4.put("x", mxVar2.s(context, iArr[0]));
                    jSONObject4.put("y", mxVar2.s(context, iArr[1]));
                    jSONObject4.put("relative_to", "window");
                    jSONObject = jSONObject4;
                }
                jSONObject2.put("visible_bounds", jSONObject);
            } catch (Exception unused2) {
            }
            parent = view.getParent();
            if (parent != null) {
                try {
                    str = (String) parent.getClass().getMethod("getTemplateTypeName", null).invoke(parent, null);
                } catch (IllegalAccessException e2) {
                    e = e2;
                    agd.f("Cannot access method getTemplateTypeName: ", e);
                    str = "";
                    hashCode = str.hashCode();
                    if (hashCode == -2066603854) {
                    }
                } catch (NoSuchMethodException unused3) {
                } catch (SecurityException e3) {
                    e = e3;
                    agd.f("Cannot access method getTemplateTypeName: ", e);
                    str = "";
                    hashCode = str.hashCode();
                    if (hashCode == -2066603854) {
                    }
                } catch (InvocationTargetException e4) {
                    e = e4;
                    agd.f("Cannot access method getTemplateTypeName: ", e);
                    str = "";
                    hashCode = str.hashCode();
                    if (hashCode == -2066603854) {
                    }
                }
                hashCode = str.hashCode();
                if (hashCode == -2066603854) {
                    if (hashCode == 2019754500 && str.equals("medium_template")) {
                        c2 = 1;
                        if (c2 != 0) {
                            jSONObject2.put("native_template_type", 1);
                        } else if (c2 != 1) {
                            jSONObject2.put("native_template_type", 0);
                        } else {
                            jSONObject2.put("native_template_type", 2);
                        }
                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhE)).booleanValue()) {
                            try {
                                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                                jSONObject2.put("view_width_layout_type", bb(layoutParams.width) - 1);
                                jSONObject2.put("view_height_layout_type", bb(layoutParams.height) - 1);
                            } catch (Exception unused4) {
                                agd.e("Unable to get native ad view layout types");
                            }
                        }
                    }
                    c2 = 65535;
                    if (c2 != 0) {
                    }
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhE)).booleanValue()) {
                    }
                } else {
                    if (str.equals("small_template")) {
                        c2 = 0;
                        if (c2 != 0) {
                        }
                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhE)).booleanValue()) {
                        }
                    }
                    c2 = 65535;
                    if (c2 != 0) {
                    }
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhE)).booleanValue()) {
                    }
                }
            }
            str = "";
            hashCode = str.hashCode();
            if (hashCode == -2066603854) {
            }
        }
        return jSONObject2;
    }

    public static gmn z(Context context) {
        int i;
        TypedValue typedValue = new TypedValue();
        boolean z = context.getTheme().resolveAttribute(R.attr.isMaterial3Theme, typedValue, true) && typedValue.data != 0;
        TypedValue typedValue2 = new TypedValue();
        boolean z2 = context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue2, true) && typedValue2.data != 0;
        Resources.Theme newTheme = context.getResources().newTheme();
        newTheme.setTo(context.getTheme());
        newTheme.applyStyle(R.style.Theme_Material3_DayNight, false);
        gzy gzyVar = new gzy(context);
        gzyVar.f19084e = newTheme;
        int i2 = z ? R.style.SettingSelectionDialogTheme : z2 ? R.style.SettingSelectionDialogTheme_Material2 : R.style.SettingSelectionDialogTheme_AppCompat;
        TypedValue typedValue3 = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.appDialogTheme, typedValue3, true) && (i = typedValue3.resourceId) != 0) {
            i2 = i;
        }
        return new gmn(gzyVar, i2);
    }
}
