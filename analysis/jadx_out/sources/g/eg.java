package g;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Process;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.embedapplog.util.TTEncryptUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.google.firebase.analytics.FirebaseAnalytics;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.Deflater;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public abstract class eg {

    /* renamed from: b, reason: collision with root package name */
    public static boolean f15467b;

    /* renamed from: c, reason: collision with root package name */
    public static FirebaseAnalytics f15468c;

    /* renamed from: d, reason: collision with root package name */
    public static int f15469d;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f15472g;

    /* renamed from: e, reason: collision with root package name */
    public static final char[] f15470e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: f, reason: collision with root package name */
    public static final hy f15471f = new hy("CONDITION_FALSE", 1);

    /* renamed from: a, reason: collision with root package name */
    public static final Object f15466a = new Object();

    /* JADX WARN: Removed duplicated region for block: B:47:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static cyl aa(String str, byte[] bArr, String str2, String str3, boolean z) {
        InputStream inputStream;
        URL url;
        DataOutputStream dataOutputStream;
        GZIPInputStream gZIPInputStream;
        byte[] x;
        HttpURLConnection httpURLConnection = null;
        GZIPInputStream gZIPInputStream2 = null;
        try {
            LinkedList<Pair> linkedList = new LinkedList();
            if (z) {
                TextUtils.isEmpty(str);
                url = new URL(str);
            } else {
                url = new URL(str);
            }
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
            if (z) {
                try {
                    if (!linkedList.isEmpty()) {
                        for (Pair pair : linkedList) {
                            if (pair != null) {
                                httpURLConnection2.setRequestProperty((String) pair.first, (String) pair.second);
                            }
                        }
                    }
                } catch (Throwable th) {
                    httpURLConnection = httpURLConnection2;
                    th = th;
                    inputStream = null;
                    try {
                        Context context = eca.f15278c;
                        return new cyl(th);
                    } finally {
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception unused) {
                            }
                        }
                        bfc.o(inputStream);
                    }
                }
            }
            httpURLConnection2.setDoOutput(true);
            httpURLConnection2.setRequestProperty("Content-Type", str2);
            if (str3 != null) {
                httpURLConnection2.setRequestProperty("Content-Encoding", str3);
            }
            httpURLConnection2.setRequestProperty("Accept-Encoding", "gzip");
            httpURLConnection2.setRequestMethod("POST");
            if (bArr.length > 0) {
                try {
                    dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = null;
                }
                try {
                    dataOutputStream.write(bArr);
                    dataOutputStream.flush();
                    bfc.o(dataOutputStream);
                } catch (Throwable th3) {
                    th = th3;
                    bfc.o(dataOutputStream);
                    throw th;
                }
            }
            if (httpURLConnection2.getResponseCode() != 200) {
                cyl cylVar = new cyl(MediaPlayer.MEDIA_PLAYER_OPTION_DRM_TYPE, 0);
                try {
                    httpURLConnection2.disconnect();
                } catch (Exception unused2) {
                }
                return cylVar;
            }
            inputStream = httpURLConnection2.getInputStream();
            try {
                if ("gzip".equalsIgnoreCase(httpURLConnection2.getContentEncoding())) {
                    try {
                        gZIPInputStream = new GZIPInputStream(inputStream);
                    } catch (Throwable th4) {
                        th = th4;
                    }
                    try {
                        x = x(gZIPInputStream);
                        bfc.o(gZIPInputStream);
                    } catch (Throwable th5) {
                        th = th5;
                        gZIPInputStream2 = gZIPInputStream;
                        bfc.o(gZIPInputStream2);
                        throw th;
                    }
                } else {
                    x = x(inputStream);
                }
                cyl ae = ae(x);
                try {
                    httpURLConnection2.disconnect();
                } catch (Exception unused3) {
                }
                bfc.o(inputStream);
                return ae;
            } catch (Throwable th6) {
                httpURLConnection = httpURLConnection2;
                th = th6;
                Context context2 = eca.f15278c;
                return new cyl(th);
            }
        } catch (Throwable th7) {
            th = th7;
            inputStream = null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Locale ab(String str) {
        char c2;
        LocaleList locales;
        Locale locale;
        switch (str.hashCode()) {
            case 3241:
                if (str.equals("en")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 115861276:
                if (str.equals("zh_CN")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 115861428:
                if (str.equals("zh_HK")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 115861812:
                if (str.equals("zh_TW")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1033296509:
                if (str.equals("follow_system")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            return Locale.SIMPLIFIED_CHINESE;
        }
        if (c2 == 1) {
            return Locale.ENGLISH;
        }
        if (c2 == 2) {
            return Locale.TRADITIONAL_CHINESE;
        }
        if (c2 == 3) {
            return new Locale("zh", "HK");
        }
        if (Build.VERSION.SDK_INT < 24) {
            return Resources.getSystem().getConfiguration().locale;
        }
        locales = Resources.getSystem().getConfiguration().getLocales();
        locale = locales.get(0);
        return locale;
    }

    public static final List ac(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex(TTDownloadField.TT_ID);
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        fsq fsqVar = new fsq(10);
        while (cursor.moveToNext()) {
            int i = cursor.getInt(columnIndex);
            int i2 = cursor.getInt(columnIndex2);
            String string = cursor.getString(columnIndex3);
            bff.e(string, "cursor.getString(fromColumnIndex)");
            String string2 = cursor.getString(columnIndex4);
            bff.e(string2, "cursor.getString(toColumnIndex)");
            fsqVar.add(new clo(i, i2, string, string2));
        }
        fsq o = fsqVar.o();
        bff.p(o, "<this>");
        if (o.j() <= 1) {
            return gsv.bf(o);
        }
        Object[] array = o.toArray(new Comparable[0]);
        Comparable[] comparableArr = (Comparable[]) array;
        if (comparableArr.length > 1) {
            Arrays.sort(comparableArr);
        }
        return fuv.bf(array);
    }

    public static Context ad(Context context) {
        if (dyd.bp(33)) {
            return context;
        }
        Locale ab2 = ab(cro.ak(context, "app_language", "follow_system"));
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        int i = Build.VERSION.SDK_INT;
        if (i < 24) {
            configuration.setLocale(ab2);
        } else {
            eqx.c();
            LocaleList ac = eqx.ac(new Locale[]{ab2});
            LocaleList.setDefault(ac);
            configuration.setLocales(ac);
            configuration.setLocale(ab2);
        }
        if (i >= 25) {
            return context.createConfigurationContext(configuration);
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        return context;
    }

    public static cyl ae(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return new cyl(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CHECK_INFO);
        }
        try {
            if (new JSONObject(new String(bArr, Charset.forName("utf-8"))).length() <= 0) {
                return new cyl(MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE, 0);
            }
            cyl cylVar = new cyl();
            cylVar.f13765e = 0;
            return cylVar;
        } catch (JSONException unused) {
            return new cyl(MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE, 0);
        }
    }

    public static void af(dxn dxnVar, String str) {
        m(dxnVar, "menu_".concat(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x03bc, code lost:
    
        r1 = new android.animation.Animator[r23.size()];
        r2 = r23.iterator();
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x03cb, code lost:
    
        if (r2.hasNext() == false) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x03cd, code lost:
    
        r1[r11] = (android.animation.Animator) r2.next();
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x03d9, code lost:
    
        if (r33 != 0) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x03db, code lost:
    
        r32.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x03de, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x03df, code lost:
    
        r32.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x03e2, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
    
        r23 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x03b8, code lost:
    
        if (r32 == null) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x03ba, code lost:
    
        if (r23 == null) goto L217;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:156:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x038a A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Animator ag(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i) {
        int i2;
        ArrayList arrayList;
        PropertyValuesHolder[] propertyValuesHolderArr;
        AttributeSet attributeSet2;
        int i3;
        ArrayList arrayList2;
        PropertyValuesHolder propertyValuesHolder;
        int size;
        float fraction;
        int i4;
        int i5;
        int i6;
        int[] iArr;
        Keyframe ofFloat;
        Resources.Theme theme2;
        int i7;
        AttributeSet attributeSet3;
        Resources resources2;
        XmlPullParser xmlPullParser2;
        ValueAnimator valueAnimator;
        int depth = xmlPullParser.getDepth();
        ValueAnimator valueAnimator2 = null;
        ArrayList arrayList3 = null;
        while (true) {
            int next = xmlPullParser.next();
            int i8 = 3;
            boolean z = false;
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                break;
            }
            int i9 = 1;
            if (next == 1) {
                break;
            }
            int i10 = 2;
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("objectAnimator")) {
                    ObjectAnimator objectAnimator = new ObjectAnimator();
                    u(context, resources, theme, attributeSet, objectAnimator, xmlPullParser);
                    valueAnimator = objectAnimator;
                } else if (name.equals("animator")) {
                    valueAnimator = u(context, resources, theme, attributeSet, null, xmlPullParser);
                } else {
                    Resources resources3 = resources;
                    Resources.Theme theme3 = theme;
                    if (name.equals("set")) {
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        TypedArray aj = bfc.aj(resources3, theme3, attributeSet, dyd.s);
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "ordering") != null) {
                            theme2 = theme3;
                            i7 = aj.getInt(0, 0);
                            attributeSet3 = attributeSet;
                            xmlPullParser2 = xmlPullParser;
                            resources2 = resources3;
                        } else {
                            theme2 = theme3;
                            i7 = 0;
                            attributeSet3 = attributeSet;
                            resources2 = resources3;
                            xmlPullParser2 = xmlPullParser;
                        }
                        ag(context, resources2, theme2, xmlPullParser2, attributeSet3, animatorSet2, i7);
                        valueAnimator2 = animatorSet2;
                        aj.recycle();
                        i2 = depth;
                        arrayList = arrayList3;
                        if (animatorSet != null || z) {
                            arrayList3 = arrayList;
                        } else {
                            arrayList3 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList3.add(valueAnimator2);
                        }
                        depth = i2;
                    } else {
                        if (!name.equals("propertyValuesHolder")) {
                            throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                        }
                        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
                        ArrayList arrayList4 = null;
                        while (true) {
                            int eventType = xmlPullParser.getEventType();
                            if (eventType == i8 || eventType == i9) {
                                break;
                            }
                            if (eventType != i10) {
                                xmlPullParser.next();
                            } else {
                                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                                    TypedArray aj2 = bfc.aj(resources3, theme3, asAttributeSet, dyd.u);
                                    String ab2 = bfc.ab(aj2, xmlPullParser, "propertyName", i8);
                                    int i11 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueType") != null ? aj2.getInt(i10, 4) : 4;
                                    int[] iArr2 = dyd.f15081g;
                                    attributeSet2 = asAttributeSet;
                                    int i12 = i11;
                                    ArrayList arrayList5 = null;
                                    while (true) {
                                        int next2 = xmlPullParser.next();
                                        i3 = depth;
                                        if (next2 == 3 || next2 == 1) {
                                            break;
                                        }
                                        if (xmlPullParser.getName().equals("keyframe")) {
                                            if (i12 == 4) {
                                                TypedArray aj3 = bfc.aj(resources3, theme3, Xml.asAttributeSet(xmlPullParser), iArr2);
                                                TypedValue peekValue = !bfc.n(xmlPullParser, "value") ? null : aj3.peekValue(0);
                                                int i13 = (peekValue == null || !s(peekValue.type)) ? 0 : 3;
                                                aj3.recycle();
                                                i12 = i13;
                                            }
                                            TypedArray aj4 = bfc.aj(resources3, theme3, Xml.asAttributeSet(xmlPullParser), iArr2);
                                            iArr = iArr2;
                                            float f2 = bfc.n(xmlPullParser, "fraction") ? aj4.getFloat(3, -1.0f) : -1.0f;
                                            TypedValue peekValue2 = !bfc.n(xmlPullParser, "value") ? null : aj4.peekValue(0);
                                            boolean z2 = peekValue2 != null;
                                            int i14 = i12 == 4 ? (z2 && s(peekValue2.type)) ? 3 : 0 : i12;
                                            if (!z2) {
                                                ofFloat = i14 == 0 ? Keyframe.ofFloat(f2) : Keyframe.ofInt(f2);
                                            } else if (i14 == 0) {
                                                ofFloat = Keyframe.ofFloat(f2, xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "value") != null ? aj4.getFloat(0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                                            } else if (i14 == 1 || i14 == 3) {
                                                ofFloat = Keyframe.ofInt(f2, xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "value") != null ? aj4.getInt(0, 0) : 0);
                                            } else {
                                                ofFloat = null;
                                            }
                                            int resourceId = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") != null ? aj4.getResourceId(1, 0) : 0;
                                            if (resourceId > 0) {
                                                ofFloat.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
                                            }
                                            aj4.recycle();
                                            ArrayList arrayList6 = arrayList5;
                                            if (ofFloat != null) {
                                                if (arrayList6 == null) {
                                                    arrayList6 = new ArrayList();
                                                }
                                                arrayList6.add(ofFloat);
                                                arrayList5 = arrayList6;
                                            }
                                            xmlPullParser.next();
                                        } else {
                                            iArr = iArr2;
                                        }
                                        resources3 = resources;
                                        theme3 = theme;
                                        depth = i3;
                                        iArr2 = iArr;
                                    }
                                    ArrayList arrayList7 = arrayList5;
                                    if (arrayList7 == null || (size = arrayList7.size()) <= 0) {
                                        arrayList2 = arrayList3;
                                        propertyValuesHolder = null;
                                    } else {
                                        Keyframe keyframe = (Keyframe) arrayList7.get(0);
                                        Keyframe keyframe2 = (Keyframe) arrayList7.get(size - 1);
                                        float fraction2 = keyframe2.getFraction();
                                        int i15 = size;
                                        Class cls = Integer.TYPE;
                                        Class cls2 = Float.TYPE;
                                        arrayList2 = arrayList3;
                                        if (fraction2 < 1.0f) {
                                            if (fraction2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                                keyframe2.setFraction(1.0f);
                                            } else {
                                                arrayList7.add(arrayList7.size(), keyframe2.getType() == cls2 ? Keyframe.ofFloat(1.0f) : keyframe2.getType() == cls ? Keyframe.ofInt(1.0f) : Keyframe.ofObject(1.0f));
                                                i15++;
                                                fraction = keyframe.getFraction();
                                                if (fraction != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                                    if (fraction < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                                        keyframe.setFraction(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                                                    } else {
                                                        arrayList7.add(0, keyframe.getType() == cls2 ? Keyframe.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : keyframe.getType() == cls ? Keyframe.ofInt(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : Keyframe.ofObject(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
                                                        i15++;
                                                    }
                                                }
                                                i4 = i15;
                                                Keyframe[] keyframeArr = new Keyframe[i4];
                                                arrayList7.toArray(keyframeArr);
                                                i5 = 0;
                                                while (i5 < i4) {
                                                    Keyframe keyframe3 = keyframeArr[i5];
                                                    if (keyframe3.getFraction() < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                                        if (i5 == 0) {
                                                            keyframe3.setFraction(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                                                        } else {
                                                            int i16 = i4 - 1;
                                                            if (i5 == i16) {
                                                                keyframe3.setFraction(1.0f);
                                                            } else {
                                                                int i17 = i5;
                                                                for (int i18 = i5 + 1; i18 < i16 && keyframeArr[i18].getFraction() < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT; i18++) {
                                                                    i17 = i18;
                                                                }
                                                                float fraction3 = (keyframeArr[i17 + 1].getFraction() - keyframeArr[i5 - 1].getFraction()) / ((i17 - i5) + 2);
                                                                int i19 = i5;
                                                                while (i19 <= i17) {
                                                                    float f3 = fraction3;
                                                                    keyframeArr[i19].setFraction(keyframeArr[i19 - 1].getFraction() + f3);
                                                                    i19++;
                                                                    i4 = i4;
                                                                    fraction3 = f3;
                                                                }
                                                                i6 = i4;
                                                                i5++;
                                                                i4 = i6;
                                                            }
                                                        }
                                                    }
                                                    i6 = i4;
                                                    i5++;
                                                    i4 = i6;
                                                }
                                                propertyValuesHolder = PropertyValuesHolder.ofKeyframe(ab2, keyframeArr);
                                                if (i12 == 3) {
                                                    propertyValuesHolder.setEvaluator(auc.f10852a);
                                                }
                                            }
                                        }
                                        fraction = keyframe.getFraction();
                                        if (fraction != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                        }
                                        i4 = i15;
                                        Keyframe[] keyframeArr2 = new Keyframe[i4];
                                        arrayList7.toArray(keyframeArr2);
                                        i5 = 0;
                                        while (i5 < i4) {
                                        }
                                        propertyValuesHolder = PropertyValuesHolder.ofKeyframe(ab2, keyframeArr2);
                                        if (i12 == 3) {
                                        }
                                    }
                                    if (propertyValuesHolder == null) {
                                        propertyValuesHolder = ah(aj2, i11, 0, 1, ab2);
                                    }
                                    if (propertyValuesHolder != null) {
                                        if (arrayList4 == null) {
                                            arrayList4 = new ArrayList();
                                        }
                                        arrayList4.add(propertyValuesHolder);
                                    }
                                    aj2.recycle();
                                } else {
                                    attributeSet2 = asAttributeSet;
                                    i3 = depth;
                                    arrayList2 = arrayList3;
                                }
                                xmlPullParser.next();
                                resources3 = resources;
                                theme3 = theme;
                                asAttributeSet = attributeSet2;
                                depth = i3;
                                arrayList3 = arrayList2;
                                i8 = 3;
                                i9 = 1;
                                i10 = 2;
                            }
                        }
                        i2 = depth;
                        arrayList = arrayList3;
                        if (arrayList4 != null) {
                            int size2 = arrayList4.size();
                            propertyValuesHolderArr = new PropertyValuesHolder[size2];
                            for (int i20 = 0; i20 < size2; i20++) {
                                propertyValuesHolderArr[i20] = (PropertyValuesHolder) arrayList4.get(i20);
                            }
                        } else {
                            propertyValuesHolderArr = null;
                        }
                        if (propertyValuesHolderArr != null && (valueAnimator2 instanceof ValueAnimator)) {
                            valueAnimator2.setValues(propertyValuesHolderArr);
                        }
                        z = true;
                        if (animatorSet != null) {
                        }
                        arrayList3 = arrayList;
                        depth = i2;
                    }
                }
                valueAnimator2 = valueAnimator;
                i2 = depth;
                arrayList = arrayList3;
                if (animatorSet != null) {
                }
                arrayList3 = arrayList;
                depth = i2;
            }
        }
    }

    public static PropertyValuesHolder ah(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder ofFloat;
        TypedValue peekValue = typedArray.peekValue(i2);
        boolean z = peekValue != null;
        int i4 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        boolean z2 = peekValue2 != null;
        int i5 = z2 ? peekValue2.type : 0;
        if (i == 4) {
            i = ((z && s(i4)) || (z2 && s(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            jv[] ar = dzm.ar(string);
            jv[] ar2 = dzm.ar(string2);
            if (ar != null || ar2 != null) {
                if (ar != null) {
                    bj bjVar = new bj();
                    if (ar2 == null) {
                        return PropertyValuesHolder.ofObject(str, bjVar, ar);
                    }
                    if (dzm.ay(ar, ar2)) {
                        return PropertyValuesHolder.ofObject(str, bjVar, ar, ar2);
                    }
                    throw new InflateException(awf.t(" Can't morph from ", string, " to ", string2));
                }
                if (ar2 != null) {
                    return PropertyValuesHolder.ofObject(str, new bj(), ar2);
                }
            }
            return null;
        }
        auc aucVar = i == 3 ? auc.f10852a : null;
        if (z3) {
            if (z) {
                float dimension = i4 == 5 ? typedArray.getDimension(i2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : typedArray.getFloat(i2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                if (z2) {
                    ofFloat = PropertyValuesHolder.ofFloat(str, dimension, i5 == 5 ? typedArray.getDimension(i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : typedArray.getFloat(i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                ofFloat = PropertyValuesHolder.ofFloat(str, i5 == 5 ? typedArray.getDimension(i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : typedArray.getFloat(i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
            }
            propertyValuesHolder = ofFloat;
        } else if (z) {
            int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : s(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
            if (z2) {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : s(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2);
            }
        } else if (z2) {
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) : s(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
        }
        if (propertyValuesHolder != null && aucVar != null) {
            propertyValuesHolder.setEvaluator(aucVar);
        }
        return propertyValuesHolder;
    }

    public static float h(EdgeEffect edgeEffect, float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 31) {
            return gzo.c(edgeEffect, f2, f3);
        }
        dyu.a(edgeEffect, f2, f3);
        return f2;
    }

    public static final egr i(Throwable th) {
        bff.p(th, "exception");
        return new egr(th);
    }

    public static cyl j(String str, byte[] bArr, gxc gxcVar, boolean z) {
        if (str == null) {
            return new cyl(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK);
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        int length = bArr.length;
        String str2 = null;
        if (gxc.GZIP == gxcVar && length > 128) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                try {
                    gZIPOutputStream.write(bArr);
                    gZIPOutputStream.close();
                    bArr = byteArrayOutputStream.toByteArray();
                } catch (Throwable unused) {
                    Context context = eca.f15278c;
                    gZIPOutputStream.close();
                    bArr = null;
                }
                str2 = "gzip";
            } catch (Throwable th) {
                gZIPOutputStream.close();
                throw th;
            }
        } else if (gxc.DEFLATER == gxcVar && length > 128) {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(8192);
            Deflater deflater = new Deflater();
            deflater.setInput(bArr);
            deflater.finish();
            byte[] bArr2 = new byte[8192];
            while (!deflater.finished()) {
                byteArrayOutputStream2.write(bArr2, 0, deflater.deflate(bArr2));
            }
            deflater.end();
            bArr = byteArrayOutputStream2.toByteArray();
            str2 = "deflate";
        }
        if (bArr == null) {
            return new cyl(202);
        }
        String str3 = "application/json; charset=utf-8";
        if (!z) {
            return aa(str, bArr, "application/json; charset=utf-8", str2, false);
        }
        byte[] a2 = TTEncryptUtils.a(bArr, bArr.length);
        if (a2 != null) {
            if (TextUtils.isEmpty(new URL(str).getQuery())) {
                if (!str.endsWith("?")) {
                    str = str.concat("?");
                }
            } else if (!str.endsWith("&")) {
                str = str.concat("&");
            }
            str = awf.c(str, "encrypt=true");
            str3 = "application/octet-stream;tt-data=a";
            bArr = a2;
        }
        return aa(str, bArr, str3, str2, true);
    }

    public static final void k(Object obj) {
        if (obj instanceof egr) {
            throw ((egr) obj).exception;
        }
    }

    public static final int l(Cursor cursor, String str) {
        String str2;
        bff.p(cursor, "c");
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex < 0) {
            columnIndex = cursor.getColumnIndex("`" + str + '`');
            if (columnIndex < 0) {
                if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
                    String[] columnNames = cursor.getColumnNames();
                    bff.e(columnNames, "columnNames");
                    String concat = ".".concat(str);
                    String str3 = "." + str + '`';
                    int length = columnNames.length;
                    int i = 0;
                    int i2 = 0;
                    while (i2 < length) {
                        String str4 = columnNames[i2];
                        int i3 = i + 1;
                        if (str4.length() >= str.length() + 2 && (dmc.by(str4, concat) || (str4.charAt(0) == '`' && dmc.by(str4, str3)))) {
                            columnIndex = i;
                            break;
                        }
                        i2++;
                        i = i3;
                    }
                }
                columnIndex = -1;
            }
        }
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            String[] columnNames2 = cursor.getColumnNames();
            bff.e(columnNames2, "c.columnNames");
            StringBuilder sb = new StringBuilder();
            sb.append((CharSequence) "");
            int i4 = 0;
            for (String str5 : columnNames2) {
                i4++;
                if (i4 > 1) {
                    sb.append((CharSequence) ", ");
                }
                gs.u(sb, str5, null);
            }
            sb.append((CharSequence) "");
            str2 = sb.toString();
        } catch (Exception unused) {
            str2 = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        }
        throw new IllegalArgumentException(awf.t("column '", str, "' does not exist. Available columns: ", str2));
    }

    public static void m(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("item_id", str);
        String c2 = awf.c(str, "_view");
        if (dzm.p != null) {
            acq.br(context, c2, bundle);
        }
    }

    public static final bg n(crd crdVar, String str, boolean z) {
        Cursor k = crdVar.k("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = k.getColumnIndex("seqno");
            int columnIndex2 = k.getColumnIndex("cid");
            int columnIndex3 = k.getColumnIndex(abn.EXTRA_UA_APP_NAME);
            int columnIndex4 = k.getColumnIndex("desc");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex4 != -1) {
                TreeMap treeMap = new TreeMap();
                TreeMap treeMap2 = new TreeMap();
                while (k.moveToNext()) {
                    if (k.getInt(columnIndex2) >= 0) {
                        int i = k.getInt(columnIndex);
                        String string = k.getString(columnIndex3);
                        String str2 = k.getInt(columnIndex4) > 0 ? "DESC" : "ASC";
                        Integer valueOf = Integer.valueOf(i);
                        bff.e(string, "columnName");
                        treeMap.put(valueOf, string);
                        treeMap2.put(Integer.valueOf(i), str2);
                    }
                }
                Collection values = treeMap.values();
                bff.e(values, "columnsMap.values");
                List bf = gsv.bf(values);
                Collection values2 = treeMap2.values();
                bff.e(values2, "ordersMap.values");
                bg bgVar = new bg(str, z, bf, gsv.bf(values2));
                k.close();
                return bgVar;
            }
            k.close();
            return null;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static czl o(SSLSession sSLSession) {
        List list;
        Certificate[] localCertificates;
        Certificate[] peerCertificates;
        List list2 = fai.f16469a;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") ? true : cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
            throw new IOException("cipherSuite == ".concat(cipherSuite));
        }
        bos al = bos.m.al(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if ("NONE".equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        gdk.Companion.getClass();
        gdk a2 = bap.a(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
        }
        if (peerCertificates != null) {
            list = erq.i(Arrays.copyOf(peerCertificates, peerCertificates.length));
            localCertificates = sSLSession.getLocalCertificates();
            if (localCertificates != null) {
                list2 = erq.i(Arrays.copyOf(localCertificates, localCertificates.length));
            }
            return new czl(a2, al, list2, new cvt(list));
        }
        list = list2;
        localCertificates = sSLSession.getLocalCertificates();
        if (localCertificates != null) {
        }
        return new czl(a2, al, list2, new cvt(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int p(Context context, String str) {
        int i;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) != -1) {
            int i2 = Build.VERSION.SDK_INT;
            String h = i2 >= 23 ? id.h(str) : null;
            if (h != null) {
                if (packageName == null) {
                    String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                    if (packagesForUid != null && packagesForUid.length > 0) {
                        packageName = packagesForUid[0];
                    }
                }
                int myUid2 = Process.myUid();
                String packageName2 = context.getPackageName();
                int i3 = 1;
                if (myUid2 == myUid && Objects.equals(packageName2, packageName)) {
                    if (i2 >= 29) {
                        AppOpsManager g2 = agl.g(context);
                        i = g2 == null ? 1 : g2.checkOpNoThrow(h, Binder.getCallingUid(), packageName);
                        if (i == 0) {
                            String d2 = agl.d(context);
                            if (g2 != null) {
                                i3 = g2.checkOpNoThrow(h, myUid, d2);
                            }
                        }
                        if (i == 0) {
                            return -2;
                        }
                    } else if (i2 >= 23) {
                        i3 = id.c((AppOpsManager) id.b(context), h, packageName);
                    }
                } else if (i2 >= 23) {
                    i3 = id.c((AppOpsManager) id.b(context), h, packageName);
                }
                i = i3;
                if (i == 0) {
                }
            }
            return 0;
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void q(dcq dcqVar, clx clxVar, azu azuVar) {
        String str;
        JSONObject jSONObject = (JSONObject) dcqVar.f13976f;
        if (jSONObject == null || azuVar == null) {
            return;
        }
        long optLong = jSONObject.optLong("crash_time");
        dzh dzhVar = eca.f15280e;
        if (dzhVar != null) {
            Object obj = dzhVar.ag().get("aid");
            if (obj instanceof String) {
                str = (String) obj;
                int i = 0;
                if (!TextUtils.isEmpty(str)) {
                    try {
                        i = Integer.parseInt(str);
                    } catch (NumberFormatException unused) {
                        Context context = eca.f15278c;
                    }
                }
                String h = eca.f().h();
                if (optLong > 0 || i <= 0 || TextUtils.isEmpty(h) || "0".equals(h) || TextUtils.isEmpty(azuVar.b())) {
                    return;
                }
                try {
                    String str2 = "android_" + i + "_" + h + "_" + optLong + "_" + azuVar;
                    JSONObject jSONObject2 = (JSONObject) clxVar.f13101c;
                    if (jSONObject2 != null) {
                        jSONObject2.put("unique_key", str2);
                        return;
                    }
                    return;
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
        str = null;
        int i2 = 0;
        if (!TextUtils.isEmpty(str)) {
        }
        String h2 = eca.f().h();
        if (optLong > 0) {
        }
    }

    public static djo r(int i, bqt bqtVar, int i2) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            bqtVar = bqt.SUSPEND;
        }
        if (i == -2) {
            if (bqtVar != bqt.SUSPEND) {
                return new adt(1, bqtVar);
            }
            bfl.f11451f.getClass();
            return new djo(avl.f10926b);
        }
        if (i != -1) {
            return i != 0 ? i != Integer.MAX_VALUE ? bqtVar == bqt.SUSPEND ? new djo(i) : new adt(i, bqtVar) : new djo(he.UNDEFINED_ITEM_ID) : bqtVar == bqt.SUSPEND ? new djo(0) : new adt(1, bqtVar);
        }
        if (bqtVar == bqt.SUSPEND) {
            return new adt(1, bqt.DROP_OLDEST);
        }
        throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
    }

    public static boolean s(int i) {
        return i >= 28 && i <= 31;
    }

    public static String t(String str, Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String r;
        int i = 0;
        int i2 = 0;
        while (true) {
            length = objArr.length;
            if (i2 >= length) {
                break;
            }
            Object obj = objArr[i2];
            if (obj == null) {
                r = "null";
            } else {
                try {
                    r = obj.toString();
                } catch (Exception e2) {
                    String i3 = awf.i(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(i3), (Throwable) e2);
                    r = tn.r("<", i3, " threw ", e2.getClass().getName(), ">");
                }
            }
            objArr[i2] = r;
            i2++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i4 = 0;
        while (true) {
            length2 = objArr.length;
            if (i >= length2 || (indexOf = str.indexOf("%s", i4)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i4, indexOf);
            sb.append(objArr[i]);
            i++;
            i4 = indexOf + 2;
        }
        sb.append((CharSequence) str, i4, str.length());
        if (i < length2) {
            sb.append(" [");
            sb.append(objArr[i]);
            for (int i5 = i + 1; i5 < objArr.length; i5++) {
                sb.append(", ");
                sb.append(objArr[i5]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ValueAnimator u(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlPullParser xmlPullParser) {
        ValueAnimator valueAnimator;
        int i;
        int resourceId;
        ValueAnimator valueAnimator2;
        TypedArray aj = bfc.aj(resources, theme, attributeSet, dyd.f15080f);
        TypedArray aj2 = bfc.aj(resources, theme, attributeSet, dyd.k);
        ValueAnimator valueAnimator3 = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        boolean n = bfc.n(xmlPullParser, MediationConstant.EXTRA_DURATION);
        int i2 = TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX;
        if (n) {
            i2 = aj.getInt(1, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
        }
        long j = i2;
        boolean z = false;
        long j2 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "startOffset") != null ? aj.getInt(2, 0) : 0;
        int i3 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueType") != null ? aj.getInt(7, 4) : 4;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueFrom") != null && xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueTo") != null) {
            if (i3 == 4) {
                TypedValue peekValue = aj.peekValue(5);
                boolean z2 = peekValue != null;
                int i4 = z2 ? peekValue.type : 0;
                TypedValue peekValue2 = aj.peekValue(6);
                boolean z3 = peekValue2 != null;
                i3 = ((z2 && s(i4)) || (z3 && s(z3 ? peekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder ah = ah(aj, i3, 5, 6, "");
            if (ah != null) {
                valueAnimator3.setValues(ah);
            }
        }
        valueAnimator3.setDuration(j);
        valueAnimator3.setStartDelay(j2);
        valueAnimator3.setRepeatCount(xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatCount") != null ? aj.getInt(3, 0) : 0);
        valueAnimator3.setRepeatMode(xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatMode") != null ? aj.getInt(4, 1) : 1);
        if (aj2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator3;
            String ab2 = bfc.ab(aj2, xmlPullParser, "pathData", 1);
            if (ab2 == null) {
                valueAnimator = valueAnimator3;
                i = 0;
                objectAnimator2.setPropertyName(bfc.ab(aj2, xmlPullParser, "propertyName", 0));
                resourceId = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") == null ? aj.getResourceId(i, i) : 0;
                if (resourceId <= 0) {
                    valueAnimator2 = valueAnimator;
                    valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
                } else {
                    valueAnimator2 = valueAnimator;
                }
                aj.recycle();
                if (aj2 != null) {
                    aj2.recycle();
                }
                return valueAnimator2;
            }
            String ab3 = bfc.ab(aj2, xmlPullParser, "propertyXName", 2);
            String ab4 = bfc.ab(aj2, xmlPullParser, "propertyYName", 3);
            if (i3 != 2) {
            }
            if (ab3 == null && ab4 == null) {
                throw new InflateException(aj2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
            }
            Path as = dzm.as(ab2);
            PathMeasure pathMeasure = new PathMeasure(as, false);
            ArrayList arrayList = new ArrayList();
            arrayList.add(Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
            float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            while (true) {
                f2 += pathMeasure.getLength();
                arrayList.add(Float.valueOf(f2));
                if (!pathMeasure.nextContour()) {
                    break;
                }
                z = false;
            }
            PathMeasure pathMeasure2 = new PathMeasure(as, z);
            int min = Math.min(100, ((int) (f2 / 0.5f)) + 1);
            float[] fArr = new float[min];
            float[] fArr2 = new float[min];
            float[] fArr3 = new float[2];
            float f3 = f2 / (min - 1);
            valueAnimator = valueAnimator3;
            float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (i5 >= min) {
                    break;
                }
                int i7 = min;
                pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i6)).floatValue(), fArr3, null);
                fArr[i5] = fArr3[0];
                fArr2[i5] = fArr3[1];
                int i8 = i6 + 1;
                f4 += f3;
                if (i8 < arrayList.size() && f4 > ((Float) arrayList.get(i8)).floatValue()) {
                    pathMeasure2.nextContour();
                    i6 = i8;
                }
                i5++;
                min = i7;
            }
            PropertyValuesHolder ofFloat = ab3 != null ? PropertyValuesHolder.ofFloat(ab3, fArr) : null;
            PropertyValuesHolder ofFloat2 = ab4 != null ? PropertyValuesHolder.ofFloat(ab4, fArr2) : null;
            if (ofFloat == null) {
                objectAnimator2.setValues(ofFloat2);
            } else if (ofFloat2 == null) {
                objectAnimator2.setValues(ofFloat);
            } else {
                objectAnimator2.setValues(ofFloat, ofFloat2);
            }
        } else {
            valueAnimator = valueAnimator3;
        }
        i = 0;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") == null) {
        }
        if (resourceId <= 0) {
        }
        aj.recycle();
        if (aj2 != null) {
        }
        return valueAnimator2;
    }

    public static void v(dxn dxnVar, String str) {
        String concat = "menu_".concat(str);
        Bundle bundle = new Bundle();
        bundle.putString("item_id", concat);
        String c2 = awf.c(concat, "_click");
        if (dzm.p != null) {
            acq.br(dxnVar, c2, bundle);
        }
    }

    public static float w(EdgeEffect edgeEffect) {
        return Build.VERSION.SDK_INT >= 31 ? gzo.b(edgeEffect) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public static byte[] x(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                inputStream.close();
                try {
                    return byteArrayOutputStream.toByteArray();
                } finally {
                    bfc.o(byteArrayOutputStream);
                }
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static cyl y(String str, String str2, boolean z) {
        try {
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                return j(str, str2.getBytes(), gxc.GZIP, z);
            }
            return new cyl(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK);
        } catch (Throwable th) {
            Context context = eca.f15278c;
            return new cyl(th);
        }
    }

    public static final int z(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' <= c2 && c2 < 'G') {
            return c2 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c2);
    }

    public abstract void ai(com.google.android.gms.internal.ads.q qVar, Set set);

    public abstract void aj(int i);

    public abstract int ak(int i, View view);

    public abstract void al(View view, float f2, float f3);

    public abstract void am(View view, int i, int i2);

    public abstract int an(int i, View view);

    public abstract int ao(com.google.android.gms.internal.ads.q qVar);

    public int ap(View view) {
        return 0;
    }

    public void aq(int i, View view) {
    }

    public int ar() {
        return 0;
    }

    public abstract boolean as(int i, View view);
}
