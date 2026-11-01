package g;

import android.R;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.util.Xml;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgzj;
import com.google.android.gms.internal.ads.zzgzm;
import com.google.android.gms.internal.ads.zzhbo;
import j$.lang.Iterable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes3.dex */
public abstract class egh {

    /* renamed from: e, reason: collision with root package name */
    public static boolean f15481e = true;
    public static final Object h = new Object();
    public static final int[] j = {R.attr.theme, cn.trinea.android.developertools.R.attr.theme};
    public static final int[] k = {cn.trinea.android.developertools.R.attr.materialThemeOverlay};

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f15482f = {"ga_conversion", "engagement_time_msec", "exposure_time", "ad_event_id", "ad_unit_id", "ga_error", "ga_error_value", "ga_error_length", "ga_event_origin", "ga_screen", "ga_screen_class", "ga_screen_id", "ga_previous_screen", "ga_previous_class", "ga_previous_id", "manual_tracking", "message_device_time", "message_id", "message_name", "message_time", "message_tracking_id", "message_type", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count", "ga_event_id", "ga_extra_params_ct", "ga_group_name", "ga_list_length", "ga_index", "ga_event_name", "campaign_info_source", "cached_campaign", "deferred_analytics_collection", "ga_session_number", "ga_session_id", "campaign_extra_referrer", "app_in_background", "firebase_feature_rollouts", "firebase_conversion", "firebase_error", "firebase_error_value", "firebase_error_length", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "firebase_previous_screen", "firebase_previous_class", "firebase_previous_id", "session_number", "session_id"};

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f15483g = {"_c", "_et", "_xt", "_aeid", "_ai", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_mst", "_ndt", "_nmid", "_nmn", "_nmt", "_nmtid", "_nmc", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin", "_eid", "_epc", "_gn", "_ll", "_i", "_en", "_cis", "_cc", "_dac", "_sno", "_sid", "_cer", "_aib", "_ffr", "_c", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_sno", "_sid"};
    public static final String[] i = {"items"};
    public static final String[] l = {"affiliation", "coupon", "creative_name", "creative_slot", "currency", "discount", "index", "item_id", "item_brand", "item_category", "item_category2", "item_category3", "item_category4", "item_category5", "item_list_name", "item_list_id", "item_name", "item_variant", "location_id", "payment_type", "price", "promotion_id", "promotion_name", "quantity", "shipping", "shipping_tier", "tax", "transaction_id", "value", "item_list", "checkout_step", "checkout_option", "item_location_id"};

    public static final void aa(fyg fygVar, gfw gfwVar, String str) {
        amr.f10486b.fine(gfwVar.f18058e + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + fygVar.f17635g);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
    
        if (r5 != null) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void ab(Context context, String str) {
        synchronized (h) {
            if (str.equals("")) {
                context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                return;
            }
            try {
                FileOutputStream openFileOutput = context.openFileOutput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file", 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    newSerializer.setOutput(openFileOutput, null);
                    newSerializer.startDocument("UTF-8", Boolean.TRUE);
                    newSerializer.startTag(null, "locales");
                    newSerializer.attribute(null, "application_locales", str);
                    newSerializer.endTag(null, "locales");
                    newSerializer.endDocument();
                } catch (Exception unused) {
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException unused2) {
                        }
                    }
                } catch (Throwable th) {
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused4) {
            }
        }
    }

    public static void ac(Parcel parcel, int i2, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int af = af(parcel, i2);
        parcel.writeBundle(bundle);
        s(parcel, af);
    }

    public static long ad(int i2, byte[] bArr) {
        return (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48) | ((bArr[i2 + 7] & 255) << 56);
    }

    public static void ae(he heVar, ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                ArrayList an = an(heVar);
                heVar.writeToParcel(obtain, 0);
                obtain.writeInt(an.size());
                Iterator it = an.iterator();
                while (it.hasNext()) {
                    he heVar2 = (he) it.next();
                    obtain.writeInt(heVar2.getLayer());
                    obtain.writeInt(heVar2.getIndex());
                    obtain.writeString(heVar2.getViewIdResourceNameHuman());
                    List<AccessibilityNodeInfo.AccessibilityAction> actions = heVar2.getActions();
                    obtain.writeInt(actions == null ? -1 : actions.size());
                    if (actions != null) {
                        for (AccessibilityNodeInfo.AccessibilityAction accessibilityAction : actions) {
                            obtain.writeInt(accessibilityAction.getId());
                            TextUtils.writeToParcel(accessibilityAction.getLabel(), obtain, 0);
                        }
                    }
                }
                byte[] marshall = obtain.marshall();
                if (marshall.length > 33554432) {
                    throw new IOException("Layout snapshot is too large");
                }
                DataOutputStream dataOutputStream = new DataOutputStream(autoCloseOutputStream);
                dataOutputStream.writeInt(1145852721);
                dataOutputStream.writeInt(1);
                dataOutputStream.writeInt(marshall.length);
                dataOutputStream.write(marshall);
                dataOutputStream.flush();
                obtain.recycle();
            } catch (RuntimeException e2) {
                throw new IOException("Cannot encode layout snapshot", e2);
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    public static int af(Parcel parcel, int i2) {
        parcel.writeInt(i2 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static int ag(int i2, byte[] bArr, int i3, int i4, zzgzj zzgzjVar, fse fseVar) {
        uo uoVar = (uo) zzgzjVar;
        int v = v(bArr, i3, fseVar);
        uoVar.zzi(fseVar.f17331c);
        while (v < i4) {
            int v2 = v(bArr, v, fseVar);
            if (i2 != fseVar.f17331c) {
                break;
            }
            v = v(bArr, v2, fseVar);
            uoVar.zzi(fseVar.f17331c);
        }
        return v;
    }

    public static void ah(Parcel parcel, int i2, Parcelable[] parcelableArr, int i3) {
        if (parcelableArr == null) {
            return;
        }
        int af = af(parcel, i2);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int dataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int dataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, i3);
                int dataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(dataPosition);
                parcel.writeInt(dataPosition3 - dataPosition2);
                parcel.setDataPosition(dataPosition3);
            }
        }
        s(parcel, af);
    }

    public static he ai(Cfor cfor) {
        DataInputStream dataInputStream = new DataInputStream(cfor);
        if (dataInputStream.readInt() != 1145852721 || dataInputStream.readInt() != 1) {
            throw new IOException("Unsupported layout snapshot");
        }
        int readInt = dataInputStream.readInt();
        if (readInt <= 0 || readInt > 33554432) {
            throw new IOException("Invalid layout snapshot size");
        }
        byte[] bArr = new byte[readInt];
        dataInputStream.readFully(bArr);
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.unmarshall(bArr, 0, readInt);
                obtain.setDataPosition(0);
                he createFromParcel = he.CREATOR.createFromParcel(obtain);
                ArrayList an = an(createFromParcel);
                if (obtain.readInt() != an.size()) {
                    throw new IOException("Incomplete layout snapshot");
                }
                Iterator it = an.iterator();
                while (it.hasNext()) {
                    he heVar = (he) it.next();
                    heVar.setLayer(obtain.readInt());
                    heVar.setIndex(obtain.readInt());
                    heVar.setViewIdResourceNameHuman(obtain.readString());
                    int readInt2 = obtain.readInt();
                    if (readInt2 < -1 || readInt2 > 10000) {
                        throw new IOException("Invalid layout actions");
                    }
                    ArrayList arrayList = readInt2 < 0 ? null : new ArrayList();
                    for (int i2 = 0; i2 < readInt2; i2++) {
                        arrayList.add(new AccessibilityNodeInfo.AccessibilityAction(obtain.readInt(), (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain)));
                    }
                    heVar.setActions(arrayList);
                }
                if (obtain.dataAvail() != 0) {
                    throw new IOException("Unexpected layout snapshot data");
                }
                Iterator it2 = an.iterator();
                while (it2.hasNext()) {
                    he heVar2 = (he) it2.next();
                    List<he> childNodeInfoList = heVar2.getChildNodeInfoList();
                    heVar2.setChildNodeInfoList(new ArrayList());
                    if (childNodeInfoList != null) {
                        for (he heVar3 : childNodeInfoList) {
                            if (heVar3 != null) {
                                heVar3.setParentNodeInfo(heVar2);
                            }
                        }
                    }
                }
                obtain.recycle();
                return createFromParcel;
            } catch (RuntimeException e2) {
                throw new IOException("Cannot decode layout snapshot", e2);
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    public static int aj(int i2, byte[] bArr, int i3, fse fseVar) {
        byte b2 = bArr[i3];
        int i4 = i3 + 1;
        int i5 = i2 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
        if (b2 >= 0) {
            fseVar.f17331c = i5 | (b2 << 7);
            return i4;
        }
        int i6 = i5 | ((b2 & Byte.MAX_VALUE) << 7);
        int i7 = i3 + 2;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            fseVar.f17331c = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & Byte.MAX_VALUE) << 14);
        int i9 = i3 + 3;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            fseVar.f17331c = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & Byte.MAX_VALUE) << 21);
        int i11 = i3 + 4;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            fseVar.f17331c = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                fseVar.f17331c = i12;
                return i13;
            }
            i11 = i13;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
    
        if (r2 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0030, code lost:
    
        if (r5 != 4) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x003d, code lost:
    
        if (r3.getName().equals("locales") == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x003f, code lost:
    
        r1 = r3.getAttributeValue(null, "application_locales");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String ak(Context context) {
        String str;
        synchronized (h) {
            str = "";
            try {
                FileInputStream openFileInput = context.openFileInput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setInput(openFileInput, "UTF-8");
                    int depth = newPullParser.getDepth();
                    while (true) {
                        int next = newPullParser.next();
                        if (next != 1) {
                            if (next == 3 && newPullParser.getDepth() <= depth) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                } catch (IOException | XmlPullParserException unused) {
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException unused2) {
                        }
                    }
                    if (str.isEmpty()) {
                        context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                    }
                    return str;
                } catch (Throwable th) {
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused4) {
                return "";
            }
        }
        return str;
    }

    public static void al(int i2) {
        if (2 > i2 || i2 >= 37) {
            StringBuilder z = tn.z(i2, "radix ", " was not in valid range ");
            z.append(new gex(2, 36, 1));
            throw new IllegalArgumentException(z.toString());
        }
    }

    public static void am(Parcel parcel, int i2, List list) {
        if (list == null) {
            return;
        }
        int af = af(parcel, i2);
        parcel.writeStringList(list);
        s(parcel, af);
    }

    public static ArrayList an(he heVar) {
        ArrayList arrayList = new ArrayList();
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        arrayList.add(heVar);
        newSetFromMap.add(heVar);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            List<he> childNodeInfoList = ((he) arrayList.get(i2)).getChildNodeInfoList();
            if (childNodeInfoList != null) {
                for (he heVar2 : childNodeInfoList) {
                    if (heVar2 != null) {
                        if (!newSetFromMap.add(heVar2)) {
                            throw new IOException("Invalid cyclic layout snapshot");
                        }
                        if (arrayList.size() >= 50000) {
                            throw new IOException("Too many layout nodes");
                        }
                        arrayList.add(heVar2);
                    }
                }
            }
        }
        return arrayList;
    }

    public static float ao(String[] strArr, int i2) {
        float parseFloat = Float.parseFloat(strArr[i2]);
        if (parseFloat >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    public static int ap(Object obj, ah ahVar, byte[] bArr, int i2, int i3, fse fseVar) {
        int i4 = i2 + 1;
        int i5 = bArr[i2];
        if (i5 < 0) {
            i4 = aj(i5, bArr, i4, fseVar);
            i5 = fseVar.f17331c;
        }
        int i6 = i4;
        if (i5 < 0 || i5 > i3 - i6) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i7 = fseVar.f17330b + 1;
        fseVar.f17330b = i7;
        if (i7 >= 100) {
            throw new zzgzm("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i8 = i6 + i5;
        ahVar.d(obj, bArr, i6, i8, fseVar);
        fseVar.f17330b--;
        fseVar.f17333e = obj;
        return i8;
    }

    public static void aq(Parcel parcel, int i2, int i3) {
        parcel.writeInt(i2 | (i3 << 16));
    }

    public static int ar(byte[] bArr, int i2) {
        int i3 = bArr[i2] & 255;
        int i4 = bArr[i2 + 1] & 255;
        int i5 = bArr[i2 + 2] & 255;
        return ((bArr[i2 + 3] & 255) << 24) | (i4 << 8) | i3 | (i5 << 16);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static bel as(JSONObject jSONObject) {
        JSONArray jSONArray;
        ffr ffrVar;
        JSONArray optJSONArray;
        bel belVar = new bel();
        belVar.f11381c = jSONObject.optLong("delay");
        belVar.f11384f = jSONObject.optLong(MediationConstant.EXTRA_DURATION);
        belVar.f11385g = jSONObject.optInt("playCount", 1);
        belVar.f11380b = jSONObject.optString("playDirection");
        String optString = jSONObject.optString("transformOrigin");
        HashMap hashMap = null;
        if (!TextUtils.isEmpty(optString)) {
            if (!TextUtils.isEmpty(optString)) {
                try {
                    jSONArray = new JSONArray(optString);
                } catch (JSONException unused) {
                }
                if (jSONArray != null && jSONArray.length() == 2) {
                    ffrVar = new ffr(10, false);
                    ffrVar.f16721f = jSONArray.optString(0);
                    ffrVar.f16719c = jSONArray.optString(1);
                    belVar.f11383e = ffrVar;
                    belVar.h = jSONObject.optString("timingFunction", "linear");
                    belVar.f11379a = jSONObject.optJSONObject("effect");
                    optJSONArray = jSONObject.optJSONArray("keyframes");
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        hashMap = new HashMap();
                        for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                            if (optJSONObject != null) {
                                float optDouble = (float) optJSONObject.optDouble("offset");
                                Iterator<String> keys = optJSONObject.keys();
                                while (keys.hasNext()) {
                                    String next = keys.next();
                                    TreeMap treeMap = (TreeMap) hashMap.get(next);
                                    if (!TextUtils.equals(next, "offset")) {
                                        if (!hashMap.containsKey(next) || treeMap == null) {
                                            TreeMap treeMap2 = new TreeMap();
                                            new Pair(Float.valueOf(optDouble), optJSONObject.optString(next));
                                            treeMap2.put(Float.valueOf(optDouble), optJSONObject.optString(next));
                                            hashMap.put(next, treeMap2);
                                        } else {
                                            treeMap.put(Float.valueOf(optDouble), optJSONObject.optString(next));
                                        }
                                    }
                                }
                            }
                        }
                    }
                    belVar.f11382d = hashMap;
                    return belVar;
                }
            }
            jSONArray = null;
            if (jSONArray != null) {
                ffrVar = new ffr(10, false);
                ffrVar.f16721f = jSONArray.optString(0);
                ffrVar.f16719c = jSONArray.optString(1);
                belVar.f11383e = ffrVar;
                belVar.h = jSONObject.optString("timingFunction", "linear");
                belVar.f11379a = jSONObject.optJSONObject("effect");
                optJSONArray = jSONObject.optJSONArray("keyframes");
                if (optJSONArray != null) {
                    hashMap = new HashMap();
                    while (i2 < optJSONArray.length()) {
                    }
                }
                belVar.f11382d = hashMap;
                return belVar;
            }
        }
        ffrVar = null;
        belVar.f11383e = ffrVar;
        belVar.h = jSONObject.optString("timingFunction", "linear");
        belVar.f11379a = jSONObject.optJSONObject("effect");
        optJSONArray = jSONObject.optJSONArray("keyframes");
        if (optJSONArray != null) {
        }
        belVar.f11382d = hashMap;
        return belVar;
    }

    public static btg at(hed hedVar, yu yuVar, boolean z, ArrayList arrayList) {
        dpb dpbVar = (dpb) ((ghr) arrayList.get(0)).f18176f;
        String str = (String) ((ghr) arrayList.get(1)).f18176f;
        fw fwVar = (fw) ((ghr) arrayList.get(2)).f18176f;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        cci cciVar = hedVar.am;
        dwg dwgVar = cciVar.f12631ab;
        arrayList2.add(bff.q(dwgVar));
        for (int i2 = 1; i2 < size; i2++) {
            ghr ghrVar = (ghr) arrayList.get(i2);
            try {
                arrayList2.add(bff.h(dwgVar, ghrVar));
            } catch (Exception e2) {
                hedVar.bt("Failed to build arg in invoke-custom insn: " + ghrVar, e2);
                arrayList2.add(gsh.aj(new epw(ghrVar.toString())));
            }
        }
        if (dpbVar.e().b()) {
            throw new gck("Field handle not yet supported");
        }
        dwg dwgVar2 = cciVar.f12631ab;
        hdc hdcVar = new hdc(ayu.j(dwgVar2, dpbVar.d()), eyt.aa(dpbVar.e()), arrayList2.size());
        Iterable.b.forEach(arrayList2, new agx(9, hdcVar));
        btg btgVar = new btg(hdcVar, ayu.l(dwgVar2, ve.h(dwgVar2, cwx.t), str, fwVar), yuVar, z);
        btgVar.f12188d = arrayList;
        return btgVar;
    }

    public static int au(byte[] bArr, int i2, zzgzj zzgzjVar, fse fseVar) {
        uo uoVar = (uo) zzgzjVar;
        int v = v(bArr, i2, fseVar);
        int i3 = fseVar.f17331c + v;
        while (v < i3) {
            v = v(bArr, v, fseVar);
            uoVar.zzi(fseVar.f17331c);
        }
        if (v == i3) {
            return v;
        }
        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0064 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0109 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0161 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0160 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean av(Number number, Number number2) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            int intValue = number.intValue();
            if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                return intValue == number2.intValue();
            }
            if (number2 instanceof Long) {
                if (intValue == number2.longValue()) {
                }
            } else if (number2 instanceof Float) {
                if (intValue == number2.floatValue()) {
                }
            } else {
                if (!(number2 instanceof Double)) {
                    throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
                }
                if (intValue == number2.doubleValue()) {
                }
            }
        } else if (number instanceof Long) {
            long longValue = number.longValue();
            if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                return longValue == ((long) number2.intValue());
            }
            if (number2 instanceof Long) {
                if (longValue == number2.longValue()) {
                }
            } else if (number2 instanceof Float) {
                if (longValue == number2.floatValue()) {
                }
            } else {
                if (!(number2 instanceof Double)) {
                    throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
                }
                if (longValue == number2.doubleValue()) {
                }
            }
        } else if (number instanceof Float) {
            float floatValue = number.floatValue();
            if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                return floatValue == ((float) number2.intValue());
            }
            if (number2 instanceof Long) {
                if (floatValue == number2.longValue()) {
                }
            } else if (number2 instanceof Float) {
                if (floatValue == number2.floatValue()) {
                }
            } else {
                if (!(number2 instanceof Double)) {
                    throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
                }
                if (floatValue == number2.doubleValue()) {
                }
            }
        } else {
            if (!(number instanceof Double)) {
                throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
            }
            double doubleValue = number.doubleValue();
            if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                return doubleValue == ((double) number2.intValue());
            }
            if (number2 instanceof Long) {
                if (doubleValue == number2.longValue()) {
                }
            } else if (number2 instanceof Float) {
                if (doubleValue == number2.floatValue()) {
                }
            } else {
                if (!(number2 instanceof Double)) {
                    throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
                }
                if (doubleValue == number2.doubleValue()) {
                }
            }
        }
    }

    public static boolean aw(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    public static Context ax(Context context, AttributeSet attributeSet, int i2, int i3) {
        return w(context, attributeSet, i2, i3, new int[0]);
    }

    public static float[] ay(String str) {
        JSONArray jSONArray;
        float[] fArr = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT};
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONArray = new JSONArray(str);
            } catch (JSONException unused) {
            }
            if (jSONArray != null && jSONArray.length() == 2) {
                fArr[0] = (float) jSONArray.optDouble(0);
                fArr[1] = (float) jSONArray.optDouble(1);
            }
            return fArr;
        }
        jSONArray = null;
        if (jSONArray != null) {
            fArr[0] = (float) jSONArray.optDouble(0);
            fArr[1] = (float) jSONArray.optDouble(1);
        }
        return fArr;
    }

    public static void az(Parcel parcel, int i2, IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int af = af(parcel, i2);
        parcel.writeStrongBinder(iBinder);
        s(parcel, af);
    }

    public static void ba(String str, apl aplVar) {
        if (aplVar == null) {
            throw new NullPointerException(tn.ad("null value in entry: ", str.toString(), "=null"));
        }
    }

    public static int bb(ah ahVar, int i2, byte[] bArr, int i3, int i4, zzgzj zzgzjVar, fse fseVar) {
        Object zze = ahVar.zze();
        ah ahVar2 = ahVar;
        byte[] bArr2 = bArr;
        int i5 = i4;
        fse fseVar2 = fseVar;
        int ap = ap(zze, ahVar2, bArr2, i3, i5, fseVar2);
        ahVar2.g(zze);
        fseVar2.f17333e = zze;
        zzgzjVar.add(zze);
        while (ap < i5) {
            fse fseVar3 = fseVar2;
            int i6 = i5;
            int v = v(bArr2, ap, fseVar3);
            if (i2 != fseVar3.f17331c) {
                break;
            }
            byte[] bArr3 = bArr2;
            ah ahVar3 = ahVar2;
            Object zze2 = ahVar3.zze();
            ap = ap(zze2, ahVar3, bArr3, v, i6, fseVar3);
            ahVar2 = ahVar3;
            bArr2 = bArr3;
            i5 = i6;
            fseVar2 = fseVar3;
            ahVar2.g(zze2);
            fseVar2.f17333e = zze2;
            zzgzjVar.add(zze2);
        }
        return ap;
    }

    public static int bc(Object obj, ah ahVar, byte[] bArr, int i2, int i3, int i4, fse fseVar) {
        com.google.android.gms.internal.ads.aj ajVar = (com.google.android.gms.internal.ads.aj) ahVar;
        int i5 = fseVar.f17330b + 1;
        fseVar.f17330b = i5;
        if (i5 >= 100) {
            throw new zzgzm("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int af = ajVar.af(obj, bArr, i2, i3, i4, fseVar);
        fseVar.f17330b--;
        fseVar.f17333e = obj;
        return af;
    }

    public static void bd(Parcel parcel, int i2, String[] strArr) {
        if (strArr == null) {
            return;
        }
        int af = af(parcel, i2);
        parcel.writeStringArray(strArr);
        s(parcel, af);
    }

    public static void be(Parcel parcel, int i2, byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int af = af(parcel, i2);
        parcel.writeByteArray(bArr);
        s(parcel, af);
    }

    public static int bf(Context context, int i2, int i3) {
        TypedValue i4 = bfc.i(context, i2);
        return (i4 == null || i4.type != 16) ? i3 : i4.data;
    }

    public static boolean bg(Editable editable, KeyEvent keyEvent, boolean z) {
        agc[] agcVarArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (agcVarArr = (agc[]) editable.getSpans(selectionStart, selectionEnd, agc.class)) != null && agcVarArr.length > 0) {
                for (agc agcVar : agcVarArr) {
                    int spanStart = editable.getSpanStart(null);
                    int spanEnd = editable.getSpanEnd(null);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final boolean bh(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }

    public static int bi(byte[] bArr, int i2, fse fseVar) {
        long j2 = bArr[i2];
        int i3 = i2 + 1;
        if (j2 >= 0) {
            fseVar.f17332d = j2;
            return i3;
        }
        int i4 = i2 + 2;
        byte b2 = bArr[i3];
        long j3 = (j2 & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i5 = 7;
        while (b2 < 0) {
            int i6 = i4 + 1;
            i5 += 7;
            j3 |= (r10 & Byte.MAX_VALUE) << i5;
            b2 = bArr[i4];
            i4 = i6;
        }
        fseVar.f17332d = j3;
        return i4;
    }

    public static void m(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            fjc.b(viewGroup, z);
        } else if (f15481e) {
            try {
                fjc.b(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                f15481e = false;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int n(String str, int i2) {
        int i3 = i2 / 2;
        if (!TextUtils.isEmpty(str)) {
            str.getClass();
            switch (str) {
                case "bottom":
                case "right":
                    return i2;
                case "center":
                    break;
                case "top":
                case "left":
                    return 0;
                default:
                    if (!str.endsWith("%")) {
                        try {
                            return Integer.parseInt(str);
                        } catch (NumberFormatException unused) {
                            return i3;
                        }
                    }
                    try {
                        return (int) ((i2 * Float.parseFloat(str.substring(0, str.length() - 1))) / 100.0f);
                    } catch (NumberFormatException unused2) {
                        break;
                    }
            }
        }
        return i3;
    }

    public static final boolean o(char c2, char c3, boolean z) {
        if (c2 == c3) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c2);
        char upperCase2 = Character.toUpperCase(c3);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static void p(Parcel parcel, int i2, String str) {
        if (str == null) {
            return;
        }
        int af = af(parcel, i2);
        parcel.writeString(str);
        s(parcel, af);
    }

    public static void q(Parcel parcel, int i2, List list) {
        if (list == null) {
            return;
        }
        int af = af(parcel, i2);
        int size = list.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            Parcelable parcelable = (Parcelable) list.get(i3);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int dataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int dataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, 0);
                int dataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(dataPosition);
                parcel.writeInt(dataPosition3 - dataPosition2);
                parcel.setDataPosition(dataPosition3);
            }
        }
        s(parcel, af);
    }

    public static TimeInterpolator r(Context context, int i2, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
        }
        String valueOf = String.valueOf(typedValue.string);
        if (!aw(valueOf, "cubic-bezier") && !aw(valueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (!aw(valueOf, "cubic-bezier")) {
            if (aw(valueOf, "path")) {
                return new PathInterpolator(dzm.as(valueOf.substring(5, valueOf.length() - 1)));
            }
            throw new IllegalArgumentException("Invalid motion easing type: ".concat(valueOf));
        }
        String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
        if (split.length == 4) {
            return new PathInterpolator(ao(split, 0), ao(split, 1), ao(split, 2), ao(split, 3));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + split.length);
    }

    public static void s(Parcel parcel, int i2) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i2 - 4);
        parcel.writeInt(dataPosition - i2);
        parcel.setDataPosition(dataPosition);
    }

    public static int t(byte[] bArr, int i2, fse fseVar) {
        int v = v(bArr, i2, fseVar);
        int i3 = fseVar.f17331c;
        if (i3 < 0) {
            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i3 > bArr.length - v) {
            throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i3 == 0) {
            fseVar.f17333e = zzgxp.zzb;
            return v;
        }
        fseVar.f17333e = zzgxp.zzv(bArr, v, i3);
        return v + i3;
    }

    public static void u(Parcel parcel, int i2, Parcelable parcelable, int i3) {
        if (parcelable == null) {
            return;
        }
        int af = af(parcel, i2);
        parcelable.writeToParcel(parcel, i3);
        s(parcel, af);
    }

    public static int v(byte[] bArr, int i2, fse fseVar) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return aj(b2, bArr, i3, fseVar);
        }
        fseVar.f17331c = b2;
        return i3;
    }

    public static Context w(Context context, AttributeSet attributeSet, int i2, int i3, int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k, i2, i3);
        int[] iArr2 = {obtainStyledAttributes.getResourceId(0, 0)};
        obtainStyledAttributes.recycle();
        int i4 = iArr2[0];
        boolean z = (context instanceof gzy) && ((gzy) context).f19083d == i4;
        if (i4 == 0 || z) {
            return context;
        }
        gzy gzyVar = new gzy(context, i4);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        if (iArr.length > 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
            for (int i5 = 0; i5 < iArr.length; i5++) {
                iArr3[i5] = obtainStyledAttributes2.getResourceId(i5, 0);
            }
            obtainStyledAttributes2.recycle();
        }
        for (int i6 = 0; i6 < length; i6++) {
            int i7 = iArr3[i6];
            if (i7 != 0) {
                gzyVar.getTheme().applyStyle(i7, true);
            }
        }
        TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, j);
        int resourceId = obtainStyledAttributes3.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes3.getResourceId(1, 0);
        obtainStyledAttributes3.recycle();
        if (resourceId == 0) {
            resourceId = resourceId2;
        }
        if (resourceId != 0) {
            gzyVar.getTheme().applyStyle(resourceId, true);
        }
        return gzyVar;
    }

    public static final String x(long j2) {
        return String.format("%6s", Arrays.copyOf(new Object[]{j2 <= -999500000 ? tn.f((j2 - 500000000) / 1000000000, " s ", new StringBuilder()) : j2 <= -999500 ? tn.f((j2 - 500000) / 1000000, " ms", new StringBuilder()) : j2 <= 0 ? tn.f((j2 - 500) / 1000, " µs", new StringBuilder()) : j2 < 999500 ? tn.f((j2 + 500) / 1000, " µs", new StringBuilder()) : j2 < 999500000 ? tn.f((j2 + 500000) / 1000000, " ms", new StringBuilder()) : tn.f((j2 + 500000000) / 1000000000, " s ", new StringBuilder())}, 1));
    }

    public static final void y(View view) {
        bff.p(view, "<this>");
        gms gmsVar = new gms(view, null);
        wu wuVar = new wu();
        wuVar.f20246b = gmsVar.e(wuVar, wuVar);
        while (wuVar.hasNext()) {
            View view2 = (View) wuVar.next();
            fkf fkfVar = (fkf) view2.getTag(cn.trinea.android.developertools.R.id.pooling_container_listener_holder_tag);
            if (fkfVar == null) {
                fkfVar = new fkf();
                view2.setTag(cn.trinea.android.developertools.R.id.pooling_container_listener_holder_tag, fkfVar);
            }
            ArrayList arrayList = fkfVar.f16917a;
            int bd = grj.bd(arrayList);
            if (-1 < bd) {
                throw tn.w(bd, arrayList);
            }
        }
    }

    public static int z(int i2, byte[] bArr, int i3, int i4, zzhbo zzhboVar, fse fseVar) {
        if ((i2 >>> 3) == 0) {
            throw new zzgzm("Protocol message contained an invalid tag (zero).");
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int bi = bi(bArr, i3, fseVar);
            zzhboVar.h(i2, Long.valueOf(fseVar.f17332d));
            return bi;
        }
        if (i5 == 1) {
            zzhboVar.h(i2, Long.valueOf(ad(i3, bArr)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int v = v(bArr, i3, fseVar);
            int i6 = fseVar.f17331c;
            if (i6 < 0) {
                throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i6 > bArr.length - v) {
                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i6 == 0) {
                zzhboVar.h(i2, zzgxp.zzb);
            } else {
                zzhboVar.h(i2, zzgxp.zzv(bArr, v, i6));
            }
            return v + i6;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw new zzgzm("Protocol message contained an invalid tag (zero).");
            }
            zzhboVar.h(i2, Integer.valueOf(ar(bArr, i3)));
            return i3 + 4;
        }
        int i7 = (i2 & (-8)) | 4;
        zzhbo g2 = zzhbo.g();
        int i8 = fseVar.f17330b + 1;
        fseVar.f17330b = i8;
        if (i8 >= 100) {
            throw new zzgzm("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i9 = 0;
        while (true) {
            if (i3 >= i4) {
                break;
            }
            int v2 = v(bArr, i3, fseVar);
            int i10 = fseVar.f17331c;
            if (i10 == i7) {
                i9 = i10;
                i3 = v2;
                break;
            }
            i3 = z(i10, bArr, v2, i4, g2, fseVar);
            i9 = i10;
        }
        fseVar.f17330b--;
        if (i3 > i4 || i9 != i7) {
            throw new zzgzm("Failed to parse the message.");
        }
        zzhboVar.h(i2, g2);
        return i3;
    }

    public abstract int b();

    public cqh bj(Context context, Looper looper, daw dawVar, Object obj, fbd fbdVar, fbd fbdVar2) {
        throw new UnsupportedOperationException("buildClient must be implemented");
    }

    public cqh bk(Context context, Looper looper, daw dawVar, Object obj, fwr fwrVar, dko dkoVar) {
        return bj(context, looper, dawVar, obj, (fbd) fwrVar, (fbd) dkoVar);
    }

    public abstract int c(View view, ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract ViewPropertyAnimator d(int i2, View view);
}
