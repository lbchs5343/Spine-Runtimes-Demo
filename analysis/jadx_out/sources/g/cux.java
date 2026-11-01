package g;

import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.JsonToken;
import android.view.View;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import g.fxe;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class cux {
    public static String l = null;
    public static int n = 0;
    public static int p = -1;
    public static final byte[] s = {100, 101, 120, 10};
    public static final byte[] u = {80, 75, 3, 4};
    public static final byte[] m = {48, 49, 53, 0};
    public static final byte[] o = {48, 49, 48, 0};
    public static final byte[] q = {48, 48, 57, 0};
    public static final byte[] v = {48, 48, 53, 0};
    public static final byte[] k = {48, 48, 49, 0};
    public static final byte[] r = {48, 48, 49, 0};
    public static final byte[] t = {48, 48, 50, 0};

    public static final Object aa(Object obj) {
        return obj instanceof wh ? eg.i(((wh) obj).f20211c) : obj;
    }

    public static String ab(Context context) {
        Locale z = z(context);
        if (z == null) {
            return null;
        }
        String country = z.getCountry();
        if (TextUtils.isEmpty(country)) {
            return z.getLanguage();
        }
        return z.getLanguage() + "-" + country;
    }

    public static float ac(JsonReader jsonReader) {
        JsonToken peek = jsonReader.peek();
        int i = we.f20208a[peek.ordinal()];
        if (i == 1) {
            return (float) jsonReader.nextDouble();
        }
        if (i != 2) {
            throw new IllegalArgumentException("Unknown value for token of type ".concat(String.valueOf(peek)));
        }
        jsonReader.beginArray();
        float nextDouble = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return nextDouble;
    }

    public static cyl ad(Cursor cursor) {
        cyl cylVar = new cyl();
        cursor.getString(cursor.getColumnIndex("pn"));
        cylVar.f13765e = cursor.getInt(cursor.getColumnIndex("vc"));
        cursor.getLong(cursor.getColumnIndex("iut"));
        cursor.getString(cursor.getColumnIndex("sp"));
        cursor.getInt(cursor.getColumnIndex("s"));
        cursor.getLong(cursor.getColumnIndex("bt"));
        cursor.getLong(cursor.getColumnIndex("et"));
        cursor.getLong(cursor.getColumnIndex(ada.COLUMN_CREATE_TIME));
        cursor.getInt(cursor.getColumnIndex("dtvc"));
        return cylVar;
    }

    public static JSONObject ae(ajh ajhVar, Map map) {
        StringBuilder sb = new StringBuilder();
        sb.append(ajhVar.f10311c);
        map.put("room_id", sb.toString());
        map.put("anchor_id", ajhVar.f10313e);
        map.put("enter_from_merge", ajhVar.f10309a.b());
        map.put("enter_method", ajhVar.f10310b.name().toLowerCase());
        map.put("action_type", ajhVar.f10312d.name().toLowerCase());
        map.put("request_id", ajhVar.f10314f);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ajhVar.f10315g);
        map.put(MediationConstant.EXTRA_DURATION, sb2.toString());
        map.put("is_other_channel", "union_ad");
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public static PointF af(JsonReader jsonReader, float f2) {
        int i = we.f20208a[jsonReader.peek().ordinal()];
        if (i == 1) {
            float nextDouble = (float) jsonReader.nextDouble();
            float nextDouble2 = (float) jsonReader.nextDouble();
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            return new PointF(nextDouble * f2, nextDouble2 * f2);
        }
        if (i == 2) {
            jsonReader.beginArray();
            float nextDouble3 = (float) jsonReader.nextDouble();
            float nextDouble4 = (float) jsonReader.nextDouble();
            while (jsonReader.peek() != JsonToken.END_ARRAY) {
                jsonReader.skipValue();
            }
            jsonReader.endArray();
            return new PointF(nextDouble3 * f2, nextDouble4 * f2);
        }
        if (i != 3) {
            throw new IllegalArgumentException("Unknown point starts with " + jsonReader.peek());
        }
        jsonReader.beginObject();
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            if (nextName.equals("x")) {
                f3 = ac(jsonReader);
            } else if (nextName.equals("y")) {
                f4 = ac(jsonReader);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return new PointF(f3 * f2, f4 * f2);
    }

    public static void ag(Throwable th, Throwable th2) {
        bff.p(th, "<this>");
        bff.p(th2, "exception");
        if (th != th2) {
            Integer num = fyi.f17637a;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = uv.f20124a;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static boolean ah(CharSequence charSequence, Object obj) {
        if (charSequence != obj) {
            return charSequence == null ? obj == null : charSequence.equals(obj);
        }
        return true;
    }

    public static String ai(String str, String[] strArr, String[] strArr2) {
        int min = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < min; i++) {
            String str2 = strArr[i];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i];
            }
        }
        return null;
    }

    public static boolean aj(Context context) {
        return "zh-cn".equalsIgnoreCase(ab(context));
    }

    public static String ak(Serializable serializable) {
        return serializable == null ? "" : serializable instanceof String ? (String) serializable : serializable.toString();
    }

    public static boolean al(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return false;
        }
        boolean z = true;
        for (File file2 : listFiles) {
            z = al(file2) && z;
        }
        return z;
    }

    public static int am(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 32) {
            return 5;
        }
        if (i == 64) {
            return 6;
        }
        if (i == 128) {
            return 7;
        }
        if (i == 256) {
            return 8;
        }
        if (i == 512) {
            return 9;
        }
        throw new IllegalArgumentException(awf.ac(i, "type needs to be >= FIRST and <= LAST, type="));
    }

    public static String an() {
        BufferedReader bufferedReader;
        String processName;
        if (l == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                processName = Application.getProcessName();
                l = processName;
            } else {
                int i = n;
                if (i == 0) {
                    i = Process.myPid();
                    n = i;
                }
                String str = null;
                str = null;
                str = null;
                BufferedReader bufferedReader2 = null;
                if (i > 0) {
                    try {
                        String str2 = "/proc/" + i + "/cmdline";
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bufferedReader = new BufferedReader(new FileReader(str2));
                            try {
                                String readLine = bufferedReader.readLine();
                                ckd.k(readLine);
                                str = readLine.trim();
                            } catch (IOException unused) {
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader2 = bufferedReader;
                                cro.al(bufferedReader2);
                                throw th;
                            }
                        } finally {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        }
                    } catch (IOException unused2) {
                        bufferedReader = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    cro.al(bufferedReader);
                }
                l = str;
            }
        }
        return l;
    }

    public static Bundle ao(Context context, int i) {
        Object invoke;
        ComponentName componentName;
        Class<?> cls = Boolean.TYPE;
        if (Process.myUid() != 0 && Process.myUid() != 2000) {
            throw new SecurityException("Shell service required");
        }
        boolean z = Build.VERSION.SDK_INT >= 29;
        String str = z ? "android.app.ActivityTaskManager" : "android.app.ActivityManager";
        String str2 = z ? "android.app.IActivityTaskManager" : "android.app.IActivityManager";
        CharSequence charSequence = null;
        Object invoke2 = Class.forName(str).getMethod("getService", null).invoke(null, null);
        Class<?> cls2 = Class.forName(str2);
        Class<?> cls3 = Integer.TYPE;
        if (z) {
            try {
                Method method = cls2.getMethod("getTasks", cls3, cls, cls, cls3);
                Boolean bool = Boolean.FALSE;
                invoke = method.invoke(invoke2, 1, bool, bool, 0);
            } catch (NoSuchMethodException unused) {
                Method method2 = cls2.getMethod("getTasks", cls3, cls, cls);
                Boolean bool2 = Boolean.FALSE;
                invoke = method2.invoke(invoke2, 1, bool2, bool2);
            }
        } else {
            invoke = cls2.getMethod("getTasks", cls3).invoke(invoke2, 1);
        }
        if (invoke instanceof List) {
            List list = (List) invoke;
            if (!list.isEmpty()) {
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) list.get(0);
                if (runningTaskInfo.getClass().getField("userId").getInt(runningTaskInfo) != i) {
                    throw new IOException("Foreground task belongs to another user");
                }
                componentName = runningTaskInfo.topActivity;
                if (componentName == null) {
                    throw new IOException("Foreground activity unavailable");
                }
                Bundle bundle = new Bundle();
                bundle.putString("package", componentName.getPackageName());
                bundle.putString("class", componentName.getClassName());
                try {
                    charSequence = context.getPackageManager().getActivityInfo(componentName, 0).loadLabel(context.getPackageManager());
                } catch (PackageManager.NameNotFoundException unused2) {
                }
                bundle.putString(abn.EXTRA_TITLE, charSequence == null ? "" : charSequence.toString());
                return bundle;
            }
        }
        throw new IOException("No foreground task");
    }

    public static ArrayList ap(JsonReader jsonReader, float f2) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            arrayList.add(af(jsonReader, f2));
            jsonReader.endArray();
        }
        jsonReader.endArray();
        return arrayList;
    }

    public static void aq(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = dzm.aw(drawable).mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                drawable.setTintList(colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
                drawable.setTintList(ColorStateList.valueOf(colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                drawable.setTintMode(mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static void ar(Throwable th, PrintWriter printWriter) {
        if (th != null) {
            aoy aoyVar = new aoy(printWriter);
            Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
            newSetFromMap.add(th);
            synchronized (printWriter) {
                try {
                    aoyVar.ab(th);
                    StackTraceElement[] stackTrace = th.getStackTrace();
                    int length = stackTrace.length;
                    int i = 0;
                    int i2 = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        StackTraceElement stackTraceElement = stackTrace[i];
                        if (i2 > 256) {
                            aoyVar.ab("\t... skip " + (stackTrace.length - i2) + " lines");
                            break;
                        }
                        aoyVar.ab("\tat " + stackTraceElement);
                        i2++;
                        i++;
                    }
                    for (Throwable th2 : th.getSuppressed()) {
                        y(th2, aoyVar, stackTrace, "Suppressed: ", "\t", newSetFromMap);
                    }
                    Throwable cause = th.getCause();
                    if (cause != null) {
                        y(cause, aoyVar, stackTrace, "Caused by: ", "", newSetFromMap);
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    public static int as(Context context) {
        int identifier;
        if (p < 0) {
            synchronized (cux.class) {
                try {
                    if (p < 0 && (identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android")) > 0) {
                        p = context.getResources().getDimensionPixelSize(identifier);
                    }
                } finally {
                }
            }
        }
        return p;
    }

    public static void at(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean hasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z = onLongClickListener != null;
        boolean z2 = hasOnClickListeners || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.setPressable(hasOnClickListeners);
        checkableImageButton.setLongClickable(z);
        checkableImageButton.setImportantForAccessibility(z2 ? 1 : 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0021 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean au(Context context, cgg cggVar) {
        boolean z;
        fxe.a j = atf.g(context).j();
        if (j != null) {
            switch (j.isAT) {
                case 11:
                    z = true;
                    break;
                case 12:
                    z = dyd.bi(context);
                    break;
                case 13:
                    z = dyd.av(context);
                    break;
            }
            if (z) {
                return false;
            }
            fxe.a j2 = atf.g(context).j();
            return ((j2 != null ? j2.tTS : 0) & cggVar.getCode()) != 0;
        }
        z = false;
        if (z) {
        }
    }

    public static String av(Context context, String str) {
        ckd.k(context);
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str)) {
            str = awt.v(context);
        }
        int identifier = resources.getIdentifier("google_app_id", "string", str);
        if (identifier == 0) {
            return null;
        }
        try {
            return resources.getString(identifier);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static ImageView.ScaleType aw(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 5 ? i != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.FIT_END : ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.FIT_START : ImageView.ScaleType.FIT_XY;
    }

    public static int ax(String str) {
        if (Integer.toString(0).equals(str)) {
            return 0;
        }
        return Color.parseColor(str);
    }

    public static int ay(JsonReader jsonReader) {
        jsonReader.beginArray();
        int nextDouble = (int) (jsonReader.nextDouble() * 255.0d);
        int nextDouble2 = (int) (jsonReader.nextDouble() * 255.0d);
        int nextDouble3 = (int) (jsonReader.nextDouble() * 255.0d);
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return Color.argb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, nextDouble, nextDouble2, nextDouble3);
    }

    public static String az(int i) {
        return i + "_tedc";
    }

    public static void w(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor());
        Drawable mutate = dzm.aw(drawable).mutate();
        mutate.setTintList(ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    public static String x(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        int i = 0;
        Throwable th2 = th;
        while (th2 != null) {
            try {
                if (th2 instanceof StackOverflowError) {
                    ar(th, printWriter);
                    break;
                }
                if (i > 20) {
                    break;
                }
                th2 = th2.getCause();
                i++;
            } catch (Exception unused) {
                printWriter.close();
                return "";
            } catch (Throwable th3) {
                printWriter.close();
                throw th3;
            }
        }
        th.printStackTrace(printWriter);
        String stringWriter2 = stringWriter.toString();
        printWriter.close();
        return stringWriter2;
    }

    public static void y(Throwable th, aoy aoyVar, StackTraceElement[] stackTraceElementArr, String str, String str2, Set set) {
        if (set.contains(th)) {
            aoyVar.ab("\t[CIRCULAR REFERENCE:" + th + "]");
            return;
        }
        set.add(th);
        StackTraceElement[] stackTrace = th.getStackTrace();
        int min = Math.min(stackTrace.length, 256);
        int i = min - 1;
        int i2 = i;
        for (int min2 = Math.min(stackTraceElementArr.length, 256) - 1; i2 >= 0 && min2 >= 0 && stackTrace[i2].equals(stackTraceElementArr[min2]); min2--) {
            i2--;
        }
        int i3 = i - i2;
        aoyVar.ab(str2 + str + th);
        for (int i4 = 0; i4 <= i2; i4++) {
            StringBuilder l2 = tn.l(str2, "\tat ");
            l2.append(stackTrace[i4]);
            aoyVar.ab(l2.toString());
        }
        if (min < stackTrace.length) {
            aoyVar.ab("\t... skip " + (stackTrace.length - min) + " lines");
        }
        if (i3 != 0) {
            aoyVar.ab(str2 + "\t... " + i3 + " more");
        }
        for (Throwable th2 : th.getSuppressed()) {
            y(th2, aoyVar, stackTrace, "Suppressed: ", awf.c(str2, "\t"), set);
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            y(cause, aoyVar, stackTrace, "Caused by: ", str2, set);
        }
    }

    public static Locale z(Context context) {
        LocaleList locales;
        int size;
        Locale locale;
        Configuration configuration = (context == null || context.getResources() == null) ? null : context.getResources().getConfiguration();
        if (configuration != null) {
            if (!dyd.bp(24)) {
                return configuration.locale;
            }
            locales = configuration.getLocales();
            if (locales != null) {
                size = locales.size();
                if (size > 0) {
                    locale = locales.get(0);
                    return locale;
                }
            }
        }
        return null;
    }

    public abstract boolean f(afp afpVar, Object obj, Object obj2);

    public abstract boolean g(afp afpVar, dcl dclVar, dcl dclVar2);

    public abstract void h(fds fdsVar, fds fdsVar2);

    public abstract boolean i(afp afpVar, fds fdsVar, fds fdsVar2);

    public abstract void j(fds fdsVar, Thread thread);
}
