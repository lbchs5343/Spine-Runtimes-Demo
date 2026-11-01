package g;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzafg;
import com.google.android.gms.internal.ads.zzeo;
import com.google.android.gms.internal.ads.zzfzl;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzgcy;
import j$.util.Objects;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.WeakHashMap;
import java.util.regex.Matcher;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public abstract class acr {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f9988a;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f9991d;

    /* renamed from: e, reason: collision with root package name */
    public static Field f9992e;

    /* renamed from: g, reason: collision with root package name */
    public static HashMap f9994g;
    public static HashMap i;
    public static Class k;
    public static boolean l;
    public static Field m;
    public static HashMap n;
    public static Field o;
    public static Method p;
    public static String r;
    public static ArrayList s;
    public static boolean u;
    public static boolean v;
    public static ArrayList w;
    public static boolean x;
    public static HashMap y;
    public static Field z;
    public static final String[] j = {"pro", "financial"};

    /* renamed from: b, reason: collision with root package name */
    public static volatile boolean f9989b = false;
    public static boolean t = true;

    /* renamed from: c, reason: collision with root package name */
    public static final Type[] f9990c = new Type[0];
    public static final String[] h = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    public static final String[] q = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f9993f = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static String aa(long j2, String str) {
        int length;
        String i2;
        int lastIndexOf;
        if (TextUtils.isEmpty(str) || j2 < 0 || (length = str.length()) <= 5) {
            return null;
        }
        String substring = str.substring(3, length - 2);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j2);
        String num = Integer.toString(calendar.get(13));
        String num2 = Integer.toString(calendar.get(2));
        String num3 = Integer.toString(calendar.get(11));
        String num4 = Integer.toString(calendar.get(7));
        if (substring.indexOf(num) == 0 && (lastIndexOf = substring.lastIndexOf((i2 = awf.i(num2, num3, num4)))) >= 0 && i2.length() + lastIndexOf == substring.length() && lastIndexOf >= num.length()) {
            return substring.substring(num.length(), lastIndexOf);
        }
        return null;
    }

    public static void ab(Type type) {
        ckd.ba(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }

    public static Drawable ac(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        boolean z2 = Build.VERSION.SDK_INT < 23;
        if (drawable == null) {
            return null;
        }
        if (colorStateList == null) {
            if (z2) {
                drawable.mutate();
            }
            return drawable;
        }
        Drawable mutate = dzm.aw(drawable).mutate();
        if (mode != null) {
            mutate.setTintMode(mode);
        }
        return mutate;
    }

    public static String ad(int i2, int i3, String str) {
        if (i2 < 0) {
            return eg.t("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return eg.t("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        throw new IllegalArgumentException(awf.ac(i3, "negative size: "));
    }

    public static ert ae(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List az = az(context);
        if (acw.u(az)) {
            return null;
        }
        Iterator it = ((ArrayList) az).iterator();
        while (it.hasNext()) {
            byz byzVar = (byz) it.next();
            if (byzVar != null && !acw.u(byzVar.f12476a)) {
                Iterator it2 = byzVar.f12476a.iterator();
                while (it2.hasNext()) {
                    ert ertVar = (ert) it2.next();
                    if (ertVar != null && cux.ah(str, ertVar.q)) {
                        return ertVar;
                    }
                }
            }
        }
        return null;
    }

    public static void af(String str, String... strArr) {
        boolean z2;
        Collection collection = (List) n.get(str);
        if (collection == null) {
            collection = new ArrayList();
            z2 = false;
        } else {
            z2 = true;
        }
        Collections.addAll(collection, strArr);
        if (z2) {
            return;
        }
        n.put(str, collection);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean ag(ekw ekwVar, View view, Window.Callback callback, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListener;
        Window window;
        boolean z2 = false;
        if (ekwVar != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                return ekwVar.superDispatchKeyEvent(keyEvent);
            }
            if (callback instanceof Activity) {
                Activity activity = (Activity) callback;
                activity.onUserInteraction();
                Window window2 = activity.getWindow();
                if (window2.hasFeature(8)) {
                    ActionBar actionBar = activity.getActionBar();
                    if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                        if (!f9991d) {
                            try {
                                p = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
                            } catch (NoSuchMethodException unused) {
                            }
                            f9991d = true;
                        }
                        Method method = p;
                        if (method != null) {
                            try {
                                Object invoke = method.invoke(actionBar, keyEvent);
                                if (invoke != null) {
                                    z2 = ((Boolean) invoke).booleanValue();
                                }
                            } catch (IllegalAccessException | InvocationTargetException unused2) {
                            }
                        }
                        if (z2) {
                            return true;
                        }
                    }
                }
                if (window2.superDispatchKeyEvent(keyEvent)) {
                    return true;
                }
                View decorView = window2.getDecorView();
                if (goi.z(decorView, keyEvent)) {
                    return true;
                }
                return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
            }
            if (callback instanceof Dialog) {
                Dialog dialog = (Dialog) callback;
                if (!u) {
                    try {
                        Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                        z = declaredField;
                        declaredField.setAccessible(true);
                    } catch (NoSuchFieldException unused3) {
                    }
                    u = true;
                }
                Field field = z;
                if (field != null) {
                    try {
                        onKeyListener = (DialogInterface.OnKeyListener) field.get(dialog);
                    } catch (IllegalAccessException unused4) {
                    }
                    if (onKeyListener == null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
                        return true;
                    }
                    window = dialog.getWindow();
                    if (!window.superDispatchKeyEvent(keyEvent)) {
                        return true;
                    }
                    View decorView2 = window.getDecorView();
                    if (goi.z(decorView2, keyEvent)) {
                        return true;
                    }
                    return keyEvent.dispatch(dialog, decorView2 != null ? decorView2.getKeyDispatcherState() : null, dialog);
                }
                onKeyListener = null;
                if (onKeyListener == null) {
                }
                window = dialog.getWindow();
                if (!window.superDispatchKeyEvent(keyEvent)) {
                }
            } else if ((view != null && goi.z(view, keyEvent)) || ekwVar.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
        }
        return false;
    }

    public static String ah(long j2, String str, String str2) {
        int length;
        String c2;
        int lastIndexOf;
        if (TextUtils.isEmpty(str2) || j2 < 0 || TextUtils.isEmpty(str) || (length = str2.length()) <= 5) {
            return null;
        }
        String substring = str2.substring(2, length - 3);
        StringBuilder sb = new StringBuilder();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j2);
        String num = Integer.toString(calendar.get(7));
        String num2 = Integer.toString(calendar.get(11));
        String substring2 = str.substring(str.length() - 2);
        String num3 = Integer.toString(calendar.get(14));
        String num4 = Integer.toString(calendar.get(5));
        String c3 = awf.c(num, num2);
        int length2 = c3.length();
        if (substring.indexOf(c3) != 0) {
            return null;
        }
        int i2 = length2 + 8;
        int i3 = length2 + 10;
        if (substring.length() < i3) {
            return null;
        }
        sb.append((CharSequence) new StringBuilder(substring.substring(length2, i2)).reverse());
        if (!substring2.equals(substring.substring(i2, i3)) || (lastIndexOf = substring.lastIndexOf((c2 = awf.c(num3, num4)))) < 0 || c2.length() + lastIndexOf != substring.length() || lastIndexOf < i3) {
            return null;
        }
        sb.append((CharSequence) new StringBuilder(substring.substring(i3, lastIndexOf)).reverse());
        return sb.toString();
    }

    public static void ai(elf elfVar, String str, byz byzVar) {
        boolean z2;
        synchronized (acr.class) {
            try {
                List az = az(elfVar);
                if (acw.u(az)) {
                    return;
                }
                ArrayList arrayList = (ArrayList) az;
                Iterator it = arrayList.iterator();
                int i2 = -1;
                while (true) {
                    if (!it.hasNext()) {
                        z2 = false;
                        break;
                    }
                    byz byzVar2 = (byz) it.next();
                    i2++;
                    if (byzVar2 != null && cux.ah(byzVar2.f12478c, str)) {
                        z2 = true;
                        break;
                    }
                }
                if (z2) {
                    arrayList.remove(i2);
                    bs(i2, elfVar, byzVar);
                }
            } finally {
            }
        }
    }

    public static Class aj(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            ckd.ba(rawType instanceof Class);
            return (Class) rawType;
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) aj(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return aj(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    public static void ak(int i2, int i3) {
        if (i2 < 0 || i2 > i3) {
            throw new IndexOutOfBoundsException(ad(i2, i3, "index"));
        }
    }

    public static String al(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static boolean am(View view, KeyEvent keyEvent) {
        ArrayList arrayList;
        int size;
        int indexOfKey;
        WeakHashMap weakHashMap = goi.f18490c;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList2 = lk.f19594a;
        lk lkVar = (lk) view.getTag(R.id.tag_unhandled_key_event_manager);
        WeakReference weakReference = null;
        if (lkVar == null) {
            lkVar = new lk();
            lkVar.f19595b = null;
            lkVar.f19596c = null;
            lkVar.f19597d = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, lkVar);
        }
        WeakReference weakReference2 = lkVar.f19597d;
        if (weakReference2 != null && weakReference2.get() == keyEvent) {
            return false;
        }
        lkVar.f19597d = new WeakReference(keyEvent);
        if (lkVar.f19596c == null) {
            lkVar.f19596c = new SparseArray();
        }
        SparseArray sparseArray = lkVar.f19596c;
        if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
            weakReference = (WeakReference) sparseArray.valueAt(indexOfKey);
            sparseArray.removeAt(indexOfKey);
        }
        if (weakReference == null) {
            weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
        }
        if (weakReference == null) {
            return false;
        }
        View view2 = (View) weakReference.get();
        if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
            return true;
        }
        throw tn.w(size, arrayList);
    }

    public static final Object an(czh czhVar, bdp bdpVar) {
        gsn gsnVar = new gsn(1, awt.ab(bdpVar));
        gsnVar.ac();
        gsnVar.y(new fug(czhVar, 0));
        czhVar.d(new fnq(11, gsnVar));
        return gsnVar.z();
    }

    public static ArrayList ao(Context context, String str) {
        List list = (List) i.get(str);
        if (acw.u(list)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String string = context.getString(((Integer) it.next()).intValue());
            if (!TextUtils.isEmpty(string) && !arrayList.contains(string)) {
                arrayList.add(string);
            }
        }
        return arrayList;
    }

    public static aud ap() {
        aud audVar = new aud();
        audVar.f10858f = false;
        ehe clone = audVar.h.clone();
        clone.f15541c = false;
        audVar.h = clone;
        ant antVar = ant.STRICT;
        Objects.requireNonNull(antVar);
        audVar.f10854b = antVar;
        btd btdVar = btd.f12175b;
        Objects.requireNonNull(btdVar);
        audVar.m = btdVar;
        return audVar;
    }

    public static final Object aq(czh czhVar, bdp bdpVar) {
        gsn gsnVar = new gsn(1, awt.ab(bdpVar));
        gsnVar.ac();
        gsnVar.y(new fug(czhVar, 1));
        czhVar.d(new aoy(gsnVar));
        return gsnVar.z();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final cxr ar(Throwable th, bdp bdpVar) {
        axu axuVar;
        int i2;
        if (bdpVar instanceof axu) {
            axuVar = (axu) bdpVar;
            int i3 = axuVar.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                axuVar.label = i3 - Integer.MIN_VALUE;
                Object obj = axuVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i2 = axuVar.label;
                if (i2 == 0) {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eg.k(obj);
                    throw new dwb();
                }
                eg.k(obj);
                axuVar.L$0 = th;
                axuVar.label = 1;
                uj.f20095a.i(axuVar.getContext(), new gfh(axuVar, 17, th));
                return cxrVar;
            }
        }
        axuVar = new axu(bdpVar);
        Object obj2 = axuVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i2 = axuVar.label;
        if (i2 == 0) {
        }
    }

    public static void as(Context context, Throwable th) {
        try {
            ckd.k(context);
        } catch (Exception e2) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e2);
        }
    }

    public static void at(Object obj) {
        LongSparseArray longSparseArray;
        if (!l) {
            try {
                k = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            l = true;
        }
        Class cls = k;
        if (cls == null) {
            return;
        }
        if (!x) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                m = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
            }
            x = true;
        }
        Field field = m;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e4) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public static Intent au(Context context, Class cls) {
        Intent flags = new Intent(context, (Class<?>) cls).setFlags(C.ENCODING_PCM_A_LAW);
        if (cls != b.d.ab.class && cls != b.d.a.class) {
            return flags;
        }
        flags.addFlags(276824064);
        return flags;
    }

    public static String av(Context context, String str) {
        Integer num;
        String ak = cro.ak(context, TextUtils.join("_", new String[]{"dev_text", bo(context), str}), null);
        return (!TextUtils.isEmpty(ak) || (num = (Integer) f9994g.get(str)) == null) ? ak : context.getString(num.intValue());
    }

    public static void aw(String str, Integer... numArr) {
        boolean z2;
        Collection collection = (List) i.get(str);
        if (collection == null) {
            collection = new ArrayList();
            z2 = false;
        } else {
            z2 = true;
        }
        Collections.addAll(collection, numArr);
        if (z2) {
            return;
        }
        i.put(str, collection);
    }

    public static int ax(int i2) {
        int[] iArr = {1, 2, 3, 4, 5, 6};
        for (int i3 = 0; i3 < 6; i3++) {
            int i4 = iArr[i3];
            int i5 = i4 - 1;
            if (i4 == 0) {
                throw null;
            }
            if (i5 == i2) {
                return i4;
            }
        }
        return 1;
    }

    public static String ay(List list) {
        if (list == null) {
            return "null";
        }
        if (list.isEmpty()) {
            return "";
        }
        if (list.size() == 1) {
            return Objects.toString(list.get(0));
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        sb.append(it.next());
        while (it.hasNext()) {
            sb.append(", ");
            sb.append(it.next());
        }
        return sb.toString();
    }

    public static List az(Context context) {
        byz a2;
        int indexOf;
        if (s == null || f9989b) {
            synchronized (acr.class) {
                try {
                    if (s == null) {
                        s = new ArrayList();
                    }
                    if (f9989b) {
                        f9989b = false;
                        if (!acw.u(w)) {
                            Iterator it = w.iterator();
                            while (it.hasNext()) {
                                amd amdVar = (amd) it.next();
                                if (amdVar != null && (indexOf = s.indexOf((a2 = amdVar.a(context)))) >= 0) {
                                    s.remove(indexOf);
                                    s.add(indexOf, a2);
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return s;
    }

    public static final Object ba(boj bojVar, Object obj, Object obj2, bto btoVar, w wVar) {
        Object d2;
        Object ad = gs.ad(bojVar, obj2);
        try {
            euo euoVar = new euo(wVar, bojVar);
            if (awf.n(btoVar)) {
                baf.bc(2, btoVar);
                d2 = btoVar.d(obj, euoVar);
            } else {
                d2 = awt.p(btoVar, obj, euoVar);
            }
            gs.av(bojVar, ad);
            return d2;
        } catch (Throwable th) {
            gs.av(bojVar, ad);
            throw th;
        }
    }

    public static dpd bb(String str) {
        bff.p(str, "<this>");
        Matcher matcher = dpd.f14576a.matcher(str);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException(("No subtype found for: \"" + str + '\"').toString());
        }
        String group = matcher.group(1);
        bff.e(group, "typeSubtype.group(1)");
        Locale locale = Locale.US;
        bff.e(locale, "US");
        String lowerCase = group.toLowerCase(locale);
        bff.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        String group2 = matcher.group(2);
        bff.e(group2, "typeSubtype.group(2)");
        bff.e(group2.toLowerCase(locale), "this as java.lang.String).toLowerCase(locale)");
        ArrayList arrayList = new ArrayList();
        Matcher matcher2 = dpd.f14577b.matcher(str);
        int end = matcher.end();
        while (end < str.length()) {
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                StringBuilder sb = new StringBuilder("Parameter is not formatted correctly: \"");
                String substring = str.substring(end);
                bff.e(substring, "this as java.lang.String).substring(startIndex)");
                sb.append(substring);
                sb.append("\" for: \"");
                sb.append(str);
                sb.append('\"');
                throw new IllegalArgumentException(sb.toString().toString());
            }
            String group3 = matcher2.group(1);
            if (group3 == null) {
                end = matcher2.end();
            } else {
                String group4 = matcher2.group(2);
                if (group4 == null) {
                    group4 = matcher2.group(3);
                } else if (dmc.bw(group4, "'", false) && dmc.by(group4, "'") && group4.length() > 2) {
                    group4 = group4.substring(1, group4.length() - 1);
                    bff.e(group4, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                arrayList.add(group3);
                arrayList.add(group4);
                end = matcher2.end();
            }
        }
        return new dpd(str, lowerCase, (String[]) arrayList.toArray(new String[0]));
    }

    public static boolean bc(cdy cdyVar) {
        int length;
        if (cdyVar != null && !TextUtils.isEmpty("a")) {
            String bm = bm(cdyVar.getSharedPreferences("TrineaAndroidCommon", 0).getString("dpa-ati", null));
            if (!TextUtils.isEmpty(bm)) {
                try {
                    long parseLong = Long.parseLong(bm);
                    String aa = aa(parseLong, cdyVar.getSharedPreferences("TrineaAndroidCommon", 0).getString("dpa-ame", null));
                    String ah = ah(parseLong, aa, cdyVar.getSharedPreferences("TrineaAndroidCommon", 0).getString("dpa-ack", null));
                    if (parseLong >= 0 && !TextUtils.isEmpty(aa) && !TextUtils.isEmpty(ah)) {
                        String string = cdyVar.getSharedPreferences("TrineaAndroidCommon", 0).getString("dpa-ass", null);
                        if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(aa) && parseLong >= 0 && !TextUtils.isEmpty(ah) && !TextUtils.isEmpty(string) && (length = string.length()) > 12) {
                            return string.substring(5, length - 7).equals(bn(parseLong + aa + ah));
                        }
                    }
                } catch (Exception e2) {
                    erl.ai("is psd NumberFormatException", e2);
                }
            }
        }
        return false;
    }

    public static boolean bd(Type type, Type type2) {
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
            return Objects.equals(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return bd(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
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
        return Objects.equals(typeVariable.getGenericDeclaration(), typeVariable2.getGenericDeclaration()) && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static int be(int i2, int i3, boolean z2) {
        if (i3 == 0 || !z2) {
            return i2;
        }
        int i4 = i2 - 1073741823;
        int abs = Math.abs(i4) % i3;
        return (i4 >= 0 || abs == 0) ? abs : i3 - abs;
    }

    public static boolean bf(String str, String str2) {
        bff.p(str, "current");
        if (str.equals(str2)) {
            return true;
        }
        if (str.length() != 0) {
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i2 < str.length()) {
                    char charAt = str.charAt(i2);
                    int i5 = i4 + 1;
                    if (i4 == 0 && charAt != '(') {
                        break;
                    }
                    if (charAt != '(') {
                        if (charAt == ')' && i3 - 1 == 0 && i4 != str.length() - 1) {
                            break;
                        }
                    } else {
                        i3++;
                    }
                    i2++;
                    i4 = i5;
                } else if (i3 == 0) {
                    String substring = str.substring(1, str.length() - 1);
                    bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return bff.n(dcv.bk(substring).toString(), str2);
                }
            }
        }
        return false;
    }

    public static zzfzo bg(XmlPullParser xmlPullParser, String str, String str2) {
        zzfzl zzfzlVar = new zzfzl();
        do {
            String concat = str.concat(":Item");
            xmlPullParser.next();
            if (zzeo.zzc(xmlPullParser, concat)) {
                String concat2 = str2.concat(":Mime");
                String concat3 = str2.concat(":Semantic");
                String concat4 = str2.concat(":Length");
                String concat5 = str2.concat(":Padding");
                String zza = zzeo.zza(xmlPullParser, concat2);
                String zza2 = zzeo.zza(xmlPullParser, concat3);
                String zza3 = zzeo.zza(xmlPullParser, concat4);
                String zza4 = zzeo.zza(xmlPullParser, concat5);
                if (zza == null || zza2 == null) {
                    return zzfzo.zzn();
                }
                zzfzlVar.zzf(new zzafg(zza, zza2, zza3 != null ? Long.parseLong(zza3) : 0L, zza4 != null ? Long.parseLong(zza4) : 0L));
            }
        } while (!zzeo.zzb(xmlPullParser, str.concat(":Directory")));
        return zzfzlVar.zzi();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void bh(Activity activity) {
        Activity activity2;
        boolean z2;
        TextUtils.isEmpty("https://qr.alipay.com/tsx01230kpgvt5q4ao8zbfa");
        try {
            StringBuilder sb = new StringBuilder("alipayqr://platformapi/startapp?saId=10000007&clientVersion=3.7.0.0718&qrcode=");
            sb.append(URLEncoder.encode("https://qr.alipay.com/tsx01230kpgvt5q4ao8zbfa", "utf-8"));
            sb.append("%3F_s%3Dweb-other&_t=");
            SimpleDateFormat simpleDateFormat = dlb.f14354a;
            sb.append(System.currentTimeMillis());
            String sb2 = sb.toString();
            activity2 = activity;
            try {
                z2 = fgj.e().g(activity2, new Intent("android.intent.action.VIEW", Uri.parse(sb2)), false, false, true);
            } catch (UnsupportedEncodingException unused) {
                z2 = false;
                if (z2) {
                }
            }
        } catch (UnsupportedEncodingException unused2) {
            activity2 = activity;
        }
        if (z2) {
            FragmentManager fragmentManager = activity2.getFragmentManager();
            if (fragmentManager.findFragmentByTag("donation-missing-alipay") == null) {
                fragmentManager.beginTransaction().add(new eah(), "donation-missing-alipay").commitAllowingStateLoss();
            }
        }
    }

    public static List bi(List list, List list2) {
        int size = list.size();
        int size2 = list2.size();
        if (size == 0 && size2 == 0) {
            return Collections.EMPTY_LIST;
        }
        if (size == 0) {
            return list2;
        }
        if (size2 == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList(size + size2);
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    public static void bj(Object obj, ArrayList arrayList) {
        if (obj != null) {
            arrayList.add(obj);
        }
    }

    public static List bk(List list, List list2) {
        int size = list.size();
        int size2 = list2.size();
        if (size == 0 && size2 == 0) {
            return Collections.EMPTY_LIST;
        }
        if (size == 0) {
            return list2;
        }
        if (size2 == 0) {
            return list;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(size + size2);
        linkedHashSet.addAll(list);
        linkedHashSet.addAll(list2);
        return new ArrayList(linkedHashSet);
    }

    public static String bl() {
        String str = "";
        if (!fso.ay()) {
            String str2 = Build.DISPLAY;
            if (!str2.contains("Flyme") && !Build.USER.equals("flyme")) {
                String str3 = Build.MANUFACTURER;
                if (!(!TextUtils.isEmpty(str3) ? str3.toLowerCase(Locale.getDefault()).contains("oppo") : false)) {
                    String l2 = fso.l();
                    String i2 = (l2 == null || !l2.toLowerCase(Locale.getDefault()).contains("emotionui")) ? "" : awf.i(l2, "_", str2);
                    if (!TextUtils.isEmpty(i2)) {
                        return i2;
                    }
                    String by = by("ro.vivo.os.build.display.id");
                    if (!TextUtils.isEmpty(by) && by.toLowerCase(Locale.getDefault()).contains("funtouch")) {
                        return by("ro.vivo.os.build.display.id") + "_" + by("ro.vivo.product.version");
                    }
                    if (!TextUtils.isEmpty(str2) && str2.toLowerCase(Locale.getDefault()).contains("amigo")) {
                        StringBuilder l3 = tn.l(str2, "_");
                        l3.append(by("ro.gn.sv.version"));
                        return l3.toString();
                    }
                    StringBuilder o2 = awf.o(str3);
                    o2.append(Build.BRAND);
                    String sb = o2.toString();
                    if (!TextUtils.isEmpty(sb)) {
                        String lowerCase = sb.toLowerCase(Locale.getDefault());
                        if (lowerCase.contains("360") || lowerCase.contains("qiku")) {
                            return by("ro.build.uiversion") + "_" + str2;
                        }
                    }
                    if (!TextUtils.isEmpty(by("ro.letv.release.version"))) {
                        str = "eui_" + by("ro.letv.release.version") + "_" + str2;
                    }
                    return !TextUtils.isEmpty(str) ? str : str2;
                }
                if (TextUtils.isEmpty(str3) ? false : str3.toLowerCase(Locale.getDefault()).contains("oppo")) {
                    return "coloros_" + by("ro.build.version.opporom") + "_" + str2;
                }
            } else if (str2 != null && str2.toLowerCase(Locale.getDefault()).contains("flyme")) {
                return str2;
            }
        } else if (fso.ay()) {
            return "miui_" + by("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
        }
        return "";
    }

    public static String bm(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (i2 % 3 != 0) {
                sb.append(str.charAt(i2));
            }
        }
        return sb.toString();
    }

    public static String bn(String str) {
        int i2;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int ceil = (int) Math.ceil(length / 2.0f);
        for (int i3 = 0; i3 < length; i3++) {
            if (i3 >= ceil) {
                int i4 = i3 - ceil;
                if (i4 % 2 != 0 || i4 < 0) {
                    sb.append(str.charAt(i3));
                } else {
                    sb.append(str.charAt(i4));
                }
            } else if (i3 % 2 != 0 || (i2 = i3 + ceil) >= length) {
                sb.append(str.charAt(i3));
            } else {
                sb.append(str.charAt(i2));
            }
        }
        return sb.toString();
    }

    public static String bo(Context context) {
        if (!t) {
            return r;
        }
        synchronized (acr.class) {
            try {
                if (t) {
                    String ab2 = cux.ab(context);
                    r = ab2;
                    if (ab2 == null) {
                        r = "";
                    }
                    t = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x013f, code lost:
    
        if (r1 == null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0141, code lost:
    
        r12.put(r1, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0144, code lost:
    
        return r11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x013f A[EDGE_INSN: B:24:0x013f->B:25:0x013f BREAK  A[LOOP:0: B:2:0x0002->B:29:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[LOOP:0: B:2:0x0002->B:29:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v10, types: [java.lang.Object, java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v17, types: [java.lang.reflect.Type[]] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r11v3, types: [g.fkc] */
    /* JADX WARN: Type inference failed for: r11v4, types: [g.fkc] */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.HashMap] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Type bp(Type type, Class cls, Type type2, HashMap hashMap) {
        Type doxVar;
        TypeVariable typeVariable = null;
        while (true) {
            int i2 = 0;
            if (type2 instanceof TypeVariable) {
                TypeVariable typeVariable2 = type2;
                Type type3 = (Type) hashMap.get(typeVariable2);
                Class cls2 = Void.TYPE;
                if (type3 != null) {
                    return type3 == cls2 ? type2 : type3;
                }
                hashMap.put(typeVariable2, cls2);
                if (typeVariable == null) {
                    typeVariable = typeVariable2;
                }
                GenericDeclaration genericDeclaration = typeVariable2.getGenericDeclaration();
                Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
                if (cls3 != null) {
                    Type bv = bv(type, cls, cls3);
                    if (bv instanceof ParameterizedType) {
                        TypeVariable[] typeParameters = cls3.getTypeParameters();
                        int length = typeParameters.length;
                        while (i2 < length) {
                            if (typeVariable2.equals(typeParameters[i2])) {
                                type2 = ((ParameterizedType) bv).getActualTypeArguments()[i2];
                                if (type2 != typeVariable2) {
                                    break;
                                }
                            } else {
                                i2++;
                            }
                        }
                        throw new NoSuchElementException();
                    }
                }
                type2 = typeVariable2;
                if (type2 != typeVariable2) {
                }
            } else {
                if (type2 instanceof Class) {
                    Class cls4 = type2;
                    if (cls4.isArray()) {
                        Class<?> componentType = cls4.getComponentType();
                        Type bp = bp(type, cls, componentType, hashMap);
                        if (Objects.equals(componentType, bp)) {
                            type2 = cls4;
                        } else {
                            doxVar = new ble(bp);
                            type2 = doxVar;
                        }
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    type2 = (GenericArrayType) type2;
                    Type genericComponentType = type2.getGenericComponentType();
                    Type bp2 = bp(type, cls, genericComponentType, hashMap);
                    if (!Objects.equals(genericComponentType, bp2)) {
                        doxVar = new ble(bp2);
                        type2 = doxVar;
                    }
                } else if (type2 instanceof ParameterizedType) {
                    type2 = (ParameterizedType) type2;
                    Type ownerType = type2.getOwnerType();
                    Type bp3 = bp(type, cls, ownerType, hashMap);
                    boolean z2 = !Objects.equals(bp3, ownerType);
                    Type[] actualTypeArguments = type2.getActualTypeArguments();
                    int length2 = actualTypeArguments.length;
                    while (i2 < length2) {
                        Type bp4 = bp(type, cls, actualTypeArguments[i2], hashMap);
                        if (!Objects.equals(bp4, actualTypeArguments[i2])) {
                            if (!z2) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z2 = true;
                            }
                            actualTypeArguments[i2] = bp4;
                        }
                        i2++;
                    }
                    if (z2) {
                        doxVar = new dox(bp3, type2.getRawType(), actualTypeArguments);
                        type2 = doxVar;
                    }
                } else if (type2 instanceof WildcardType) {
                    type2 = (WildcardType) type2;
                    Type[] lowerBounds = type2.getLowerBounds();
                    Type[] upperBounds = type2.getUpperBounds();
                    if (lowerBounds.length == 1) {
                        Type bp5 = bp(type, cls, lowerBounds[0], hashMap);
                        if (bp5 != lowerBounds[0]) {
                            type2 = new fkc(new Type[]{Object.class}, bp5 instanceof WildcardType ? ((WildcardType) bp5).getLowerBounds() : new Type[]{bp5});
                        }
                    } else if (upperBounds.length == 1) {
                        Type bp6 = bp(type, cls, upperBounds[0], hashMap);
                        if (bp6 != upperBounds[0]) {
                            type2 = new fkc(bp6 instanceof WildcardType ? ((WildcardType) bp6).getUpperBounds() : new Type[]{bp6}, f9990c);
                        }
                    }
                }
            }
        }
    }

    public static void bq(int i2, int i3, int i4) {
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            throw new IndexOutOfBoundsException((i2 < 0 || i2 > i4) ? ad(i2, i4, "start index") : (i3 < 0 || i3 > i4) ? ad(i3, i4, "end index") : eg.t("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2)));
        }
    }

    public static boolean br(Activity activity) {
        return fgj.e().g(activity, activity.getPackageManager().getLaunchIntentForPackage("com.tencent.mm"), false, false, true);
    }

    public static void bs(int i2, Context context, byz byzVar) {
        if (byzVar == null) {
            return;
        }
        int i3 = byzVar.f12477b;
        if ((i3 < 0 || !dyd.ar(i3)) && byh.av(context, cro.av(context, 0, "c"), "c") >= 0) {
            if (s == null) {
                az(context);
            }
            Iterator it = s.iterator();
            while (it.hasNext()) {
                byz byzVar2 = (byz) it.next();
                if (byzVar2 != null && cux.ah(byzVar2.f12478c, byzVar.f12478c)) {
                    return;
                }
            }
            if (i2 < 0) {
                s.add(byzVar);
            } else {
                s.add(i2, byzVar);
            }
        }
    }

    public static void bt(int i2, int i3) {
        String t2;
        if (i2 < 0 || i2 >= i3) {
            if (i2 < 0) {
                t2 = eg.t("%s (%s) must not be negative", "index", Integer.valueOf(i2));
            } else {
                if (i3 < 0) {
                    throw new IllegalArgumentException(awf.ac(i3, "negative size: "));
                }
                t2 = eg.t("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i2), Integer.valueOf(i3));
            }
            throw new IndexOutOfBoundsException(t2);
        }
    }

    public static boolean bu(Context context) {
        ert ae = ae(context, "decompile");
        return ae != null && ae.m;
    }

    public static Type bv(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i2 = 0; i2 < length; i2++) {
                Class<?> cls3 = interfaces[i2];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i2];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return bv(cls.getGenericInterfaces()[i2], interfaces[i2], cls2);
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
                    return bv(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static ColorStateList bw(Drawable drawable) {
        ColorStateList colorStateList;
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build.VERSION.SDK_INT < 29 || !doa.ad(drawable)) {
            return null;
        }
        colorStateList = doa.aa(drawable).getColorStateList();
        return colorStateList;
    }

    public static Type bx(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new ble(bx(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new dox(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new ble(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new fkc(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static String by(String str) {
        BufferedReader bufferedReader;
        Process exec;
        String str2 = "";
        try {
            exec = Runtime.getRuntime().exec("getprop ".concat(str));
            bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            str2 = bufferedReader.readLine();
            exec.destroy();
            bfc.o(bufferedReader);
            return str2;
        } catch (Throwable unused2) {
            bfc.o(bufferedReader);
            return str2;
        }
    }

    public abstract boolean bz(zzgcy zzgcyVar, Object obj, Object obj2);

    public abstract void ca(mz mzVar, mz mzVar2);

    public abstract void cb();

    public abstract boolean cc(zzgcy zzgcyVar, hcy hcyVar, hcy hcyVar2);

    public abstract mz cd(zzgcy zzgcyVar);

    public boolean ce() {
        return false;
    }

    public void cf() {
    }

    public abstract void cg();

    public abstract boolean ch(zzgcy zzgcyVar, mz mzVar, mz mzVar2);

    public abstract void ci(mz mzVar, Thread thread);

    public abstract hcy cj(zzgcy zzgcyVar);
}
