package g;

import android.R;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EditText;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.card.MaterialCardView;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dyd {
    public static SparseArray m = null;
    public static int n = -1;
    public static int p = -1;
    public static String w;
    public static String z;
    public static final int[] t = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};
    public static final int[] x = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};
    public static final int[] j = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};
    public static final int[] l = {R.attr.name, R.attr.pathData, R.attr.fillType};
    public static final int[] o = {R.attr.drawable};
    public static final int[] y = {R.attr.name, R.attr.animation};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f15080f = {R.attr.interpolator, R.attr.duration, R.attr.startOffset, R.attr.repeatCount, R.attr.repeatMode, R.attr.valueFrom, R.attr.valueTo, R.attr.valueType};
    public static final int[] s = {R.attr.ordering};
    public static final int[] u = {R.attr.valueFrom, R.attr.valueTo, R.attr.valueType, R.attr.propertyName};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f15081g = {R.attr.value, R.attr.interpolator, R.attr.valueType, R.attr.fraction};
    public static final int[] k = {R.attr.propertyName, R.attr.pathData, R.attr.propertyXName, R.attr.propertyYName};
    public static final Object r = new Object();
    public static final String[] i = {"ad_activeview", "ad_click", "ad_exposure", "ad_query", "ad_reward", "adunit_exposure", "app_background", "app_clear_data", "app_exception", "app_remove", "app_store_refund", "app_store_subscription_cancel", "app_store_subscription_convert", "app_store_subscription_renew", "app_upgrade", "app_update", "ga_campaign", AVErrorInfo.ERROR, "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "session_start_with_rollout", "user_engagement", "ad_impression", "screen_view", "ga_extra_parameter", "firebase_campaign"};
    public static final String[] h = {"ad_impression"};
    public static final String[] q = {"_aa", "_ac", "_xa", "_aq", "_ar", "_xu", "_ab", "_cd", "_ae", "_ui", "app_store_refund", "app_store_subscription_cancel", "app_store_subscription_convert", "app_store_subscription_renew", "_ug", "_au", "_cmp", "_err", "_f", "_v", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_ssr", "_e", "_ai", "_vs", "_ep", "_cmp"};
    public static final String[] v = {"purchase", "refund", "add_payment_info", "add_shipping_info", "add_to_cart", "add_to_wishlist", "begin_checkout", "remove_from_cart", "select_item", "select_promotion", "view_cart", "view_item", "view_item_list", "view_promotion", "ecommerce_purchase", "purchase_refund", "set_checkout_option", "checkout_progress", "select_content", "view_search_results"};

    public static boolean aa() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static Parcelable ab(Parcel parcel, int i2, Parcelable.Creator creator) {
        int ae = ae(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (ae == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + ae);
        return parcelable;
    }

    public static ArrayList ac(Parcel parcel, int i2) {
        int ae = ae(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (ae == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + ae);
        return createStringArrayList;
    }

    public static boolean ad(Parcel parcel, int i2) {
        bm(parcel, i2, 4);
        return parcel.readInt() != 0;
    }

    public static int ae(Parcel parcel, int i2) {
        return (i2 & (-65536)) != -65536 ? (char) (i2 >> 16) : parcel.readInt();
    }

    public static boolean af(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Boolean) || ((Boolean) obj).booleanValue()) {
            return !(obj instanceof Number) || ((Number) obj).floatValue() >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        return false;
    }

    public static boolean ag(MotionEvent motionEvent, int i2) {
        return (motionEvent.getSource() & i2) == i2;
    }

    public static Object ah(Bundle bundle, String str, Class cls, Object obj) {
        Object obj2 = bundle.get(str);
        if (obj2 == null) {
            return obj;
        }
        if (cls.isAssignableFrom(obj2.getClass())) {
            return obj2;
        }
        String canonicalName = cls.getCanonicalName();
        throw new IllegalStateException(awf.ad(tn.o("Invalid conditional user property field type. '", str, "' expected [", canonicalName, "] but was ["), obj2.getClass().getCanonicalName(), "]"));
    }

    public static void ai(Parcel parcel, int i2) {
        parcel.setDataPosition(parcel.dataPosition() + ae(parcel, i2));
    }

    public static dvq aj(String... strArr) {
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        int length = strArr2.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            String str = strArr2[i3];
            if (str == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i3] = dcv.bk(str).toString();
        }
        int bf = ffb.bf(0, strArr2.length - 1, 2);
        if (bf >= 0) {
            while (true) {
                String str2 = strArr2[i2];
                String str3 = strArr2[i2 + 1];
                bn(str2);
                al(str3, str2);
                if (i2 == bf) {
                    break;
                }
                i2 += 2;
            }
        }
        return new dvq(strArr2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:125:0x021c, code lost:
    
        if (r0.f10564b == 1.0f) goto L122;
     */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static eld ak(JsonReader jsonReader, cgf cgfVar) {
        dlz dlzVar;
        int i2;
        cnc cncVar;
        cnc cncVar2;
        List list;
        cgf cgfVar2 = cgfVar;
        Float valueOf = Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        boolean z2 = jsonReader.peek() == JsonToken.BEGIN_OBJECT;
        if (z2) {
            jsonReader.beginObject();
        }
        cnc cncVar3 = null;
        cnc cncVar4 = null;
        cnc cncVar5 = null;
        fc fcVar = null;
        eqn eqnVar = null;
        dlz dlzVar2 = null;
        dlz dlzVar3 = null;
        cnc cncVar6 = null;
        cnc cncVar7 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            i2 = 3;
            switch (nextName) {
                case "a":
                    cncVar = cncVar4;
                    cncVar2 = cncVar5;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        nextName2.getClass();
                        if (nextName2.equals(ada.COLUMN_KEY)) {
                            fcVar = ckd.be(jsonReader, cgfVar);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    cgfVar2 = cgfVar;
                    cncVar4 = cncVar;
                    cncVar5 = cncVar2;
                    break;
                case "o":
                    dlzVar3 = bff.av(jsonReader, cgfVar);
                    cgfVar2 = cgfVar;
                    break;
                case "p":
                    eqnVar = ckd.aa(jsonReader, cgfVar);
                    cgfVar2 = cgfVar;
                    break;
                case "r":
                    cnc am = bff.am(jsonReader, cgfVar2, false);
                    list = (List) am.z;
                    if (list.isEmpty()) {
                        cncVar = cncVar4;
                        cncVar2 = cncVar5;
                        if (((flj) list.get(0)).p != null) {
                            cncVar3 = am;
                            cgfVar2 = cgfVar;
                            cncVar4 = cncVar;
                            cncVar5 = cncVar2;
                            break;
                        } else {
                            list.set(0, new flj(cgfVar2, valueOf, valueOf, (Interpolator) null, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, Float.valueOf(cgfVar2.f12828f)));
                        }
                    } else {
                        cncVar2 = cncVar5;
                        cncVar = cncVar4;
                        list.add(new flj(cgfVar2, valueOf, valueOf, (Interpolator) null, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, Float.valueOf(cgfVar2.f12828f)));
                    }
                    cgfVar2 = cgfVar;
                    cncVar3 = am;
                    cncVar4 = cncVar;
                    cncVar5 = cncVar2;
                case "s":
                    dlzVar2 = new dlz(i2, ffb.bc(jsonReader, cgfVar2, 1.0f, acq.i, false));
                    break;
                case "eo":
                    cncVar7 = bff.am(jsonReader, cgfVar2, false);
                    break;
                case "rz":
                    cgfVar2.t("Lottie doesn't support 3D layers.");
                    cnc am2 = bff.am(jsonReader, cgfVar2, false);
                    list = (List) am2.z;
                    if (list.isEmpty()) {
                    }
                    cgfVar2 = cgfVar;
                    cncVar3 = am2;
                    cncVar4 = cncVar;
                    cncVar5 = cncVar2;
                    break;
                case "sa":
                    cncVar5 = bff.am(jsonReader, cgfVar2, false);
                    break;
                case "sk":
                    cncVar4 = bff.am(jsonReader, cgfVar2, false);
                    break;
                case "so":
                    cncVar6 = bff.am(jsonReader, cgfVar2, false);
                    break;
                default:
                    jsonReader.skipValue();
                    cncVar = cncVar4;
                    cncVar2 = cncVar5;
                    cgfVar2 = cgfVar;
                    cncVar4 = cncVar;
                    cncVar5 = cncVar2;
                    break;
            }
        }
        cnc cncVar8 = cncVar4;
        cnc cncVar9 = cncVar5;
        if (z2) {
            jsonReader.endObject();
        }
        fc fcVar2 = (fcVar == null || (fcVar.d() && ((PointF) ((flj) ((ArrayList) fcVar.f16548e).get(0)).p).equals(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT))) ? null : fcVar;
        eqn eqnVar2 = (eqnVar == null || (!(eqnVar instanceof fph) && eqnVar.d() && ((PointF) ((flj) eqnVar.ox().get(0)).p).equals(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT))) ? null : eqnVar;
        cnc cncVar10 = (cncVar3 == null || (cncVar3.d() && ((Float) ((flj) ((List) cncVar3.z).get(0)).p).floatValue() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) ? null : cncVar3;
        if (dlzVar2 != null) {
            if (dlzVar2.d()) {
                aof aofVar = (aof) ((flj) ((List) dlzVar2.z).get(0)).p;
                if (aofVar.f10563a == 1.0f) {
                }
            }
            dlzVar = dlzVar2;
            return new eld(fcVar2, eqnVar2, dlzVar, cncVar10, dlzVar3, cncVar6, cncVar7, (cncVar8 != null || (cncVar8.d() && ((Float) ((flj) ((List) cncVar8.z).get(0)).p).floatValue() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) ? null : cncVar8, (cncVar9 != null || (cncVar9.d() && ((Float) ((flj) ((List) cncVar9.z).get(0)).p).floatValue() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) ? null : cncVar9);
        }
        dlzVar = null;
        return new eld(fcVar2, eqnVar2, dlzVar, cncVar10, dlzVar3, cncVar6, cncVar7, (cncVar8 != null || (cncVar8.d() && ((Float) ((flj) ((List) cncVar8.z).get(0)).p).floatValue() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) ? null : cncVar8, (cncVar9 != null || (cncVar9.d() && ((Float) ((flj) ((List) cncVar9.z).get(0)).p).floatValue() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) ? null : cncVar9);
    }

    public static void al(String str, String str2) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                StringBuilder sb = new StringBuilder();
                sb.append(erq.h("Unexpected char %#04x at %d in %s value", Integer.valueOf(charAt), Integer.valueOf(i2), str2));
                sb.append(erq.v(str2) ? "" : ": ".concat(str));
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    public static boolean am(CharSequence charSequence) {
        return (TextUtils.isEmpty(charSequence) || ern.i(charSequence) || TextUtils.equals("com.android.systemui", charSequence)) ? false : true;
    }

    public static Object[] an(Parcel parcel, int i2, Parcelable.Creator creator) {
        int ae = ae(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (ae == 0) {
            return null;
        }
        Object[] createTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + ae);
        return createTypedArray;
    }

    public static void ao(View view) {
        Drawable background = view.getBackground();
        if ((view instanceof MaterialCardView) || (background instanceof GradientDrawable)) {
            view.setClipToOutline(true);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                ao(viewGroup.getChildAt(i2));
            }
        }
    }

    public static void ap(View view) {
        int bs = eyt.bs(cn.trinea.android.developertools.R.attr.colorOnSurface, view);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, new ColorDrawable(0));
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, new ColorDrawable(afr.c(bs, 31)));
        stateListDrawable.addState(new int[]{R.attr.state_focused}, new ColorDrawable(afr.c(bs, 20)));
        stateListDrawable.addState(new int[0], new ColorDrawable(0));
        view.setBackground(stateListDrawable);
        view.setClickable(true);
        view.setFocusable(true);
    }

    public static boolean aq() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean ar(int i2) {
        return Build.VERSION.SDK_INT < i2;
    }

    public static boolean as(ArrayList arrayList) {
        if (arrayList.size() >= 6) {
            ghr ghrVar = (ghr) arrayList.get(0);
            if (ghrVar.f18175b == dnd.ENCODED_METHOD_HANDLE) {
                dpb dpbVar = (dpb) ghrVar.f18176f;
                if (dpbVar.e() == ecx.INVOKE_STATIC) {
                    ful d2 = dpbVar.d();
                    if (d2.l().equals("Ljava/lang/invoke/LambdaMetafactory;")) {
                        String name = d2.getName();
                        if (name.equals("metafactory") || name.equals("altMetafactory")) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static void at(CharSequence charSequence, int i2, int i3, boolean z2, boolean z3) {
        if (i2 < 0 || i3 != 1) {
            return;
        }
        if ((z2 || z3) && am(charSequence)) {
            z = charSequence.toString();
            p = i2;
        }
    }

    public static long au(Parcel parcel, int i2) {
        bm(parcel, i2, 8);
        return parcel.readLong();
    }

    public static boolean av(Context context) {
        return az(context) == 1;
    }

    public static boolean aw(EditText editText) {
        return editText.getInputType() != 0;
    }

    public static Bundle ax(Parcel parcel, int i2) {
        int ae = ae(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (ae == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + ae);
        return readBundle;
    }

    public static int ay(Parcel parcel, int i2) {
        bm(parcel, i2, 4);
        return parcel.readInt();
    }

    public static int az(Context context) {
        int integer = context.getResources().getInteger(cn.trinea.android.developertools.R.integer.tchannel);
        if (integer == 1) {
            cro.az(context, 67887, "channel_run_on_wind");
        }
        return integer;
    }

    public static void ba(Parcel parcel, int i2) {
        if (parcel.dataPosition() != i2) {
            throw new csj(awf.ac(i2, "Overread allowed size end="), parcel);
        }
    }

    public static faq bb(AbstractList abstractList, String str, int i2) {
        cbt bdeVar;
        axb dq;
        Iterator it = abstractList.iterator();
        do {
            int i3 = 0;
            if (!it.hasNext()) {
                LinkedList<faq> linkedList = new LinkedList(abstractList);
                int i4 = 5;
                int i5 = 5;
                while (true) {
                    int i6 = 1;
                    if (i5 <= 0) {
                        LinkedList linkedList2 = new LinkedList();
                        for (faq faqVar : linkedList) {
                            if (linkedList2.isEmpty() || ((faq) linkedList2.peekLast()).dq() != ekx.f15720d) {
                                linkedList2.addLast(faqVar);
                            } else {
                                linkedList2.pollLast();
                                faq faqVar2 = (faq) linkedList2.pollLast();
                                if (((faq) linkedList2.pollLast()).dq() != ekx.dq) {
                                    throw new IllegalStateException();
                                }
                                faq faqVar3 = (faq) linkedList2.pollLast();
                                ewx ewxVar = new ewx();
                                ewxVar.f16299a = faqVar3;
                                ewxVar.f16300b = faqVar2;
                                ewxVar.f16301c = faqVar;
                                linkedList2.addLast(ewxVar);
                            }
                        }
                        if (linkedList2.size() == 1) {
                            return (faq) linkedList2.getFirst();
                        }
                        throw new IllegalStateException();
                    }
                    LinkedList linkedList3 = new LinkedList();
                    for (faq faqVar4 : linkedList) {
                        if (!linkedList3.isEmpty()) {
                            axb dq2 = ((faq) linkedList3.peekLast()).dq();
                            ekx ekxVar = ekx.dq;
                            if ((dq2 instanceof ekx) && ((ekx) ((faq) linkedList3.peekLast()).dq()).e() == i5) {
                                faq faqVar5 = (faq) linkedList3.pollLast();
                                faq faqVar6 = (faq) linkedList3.pollLast();
                                if (!(faqVar6.dq() instanceof ekx) && !(faqVar4.dq() instanceof ekx)) {
                                    switch (j.f19455a[((ekx) faqVar5.dq()).ordinal()]) {
                                        case 1:
                                            bdeVar = new bde(ekx.ig, 7);
                                            break;
                                        case 2:
                                            bdeVar = new dhk(ekx.no);
                                            break;
                                        case 3:
                                            bdeVar = new bde(ekx.q, i6);
                                            break;
                                        case 4:
                                            bdeVar = new bde(ekx.mp, 6);
                                            break;
                                        case 5:
                                            bdeVar = new bde(ekx.jy, 3);
                                            break;
                                        case 6:
                                            bdeVar = new bde(ekx.s, 9);
                                            break;
                                        case 7:
                                            bdeVar = new bde(ekx.o, 10);
                                            break;
                                        case 8:
                                            bdeVar = new bde(ekx.iw, 4);
                                            break;
                                        case 9:
                                            bdeVar = new bde(ekx.mn, i4);
                                            break;
                                        case 10:
                                            bdeVar = new bde(ekx.kk, 11);
                                            break;
                                        case 11:
                                            bdeVar = new bde(ekx.ia, 2);
                                            break;
                                        case 12:
                                            bdeVar = new bde(ekx.ox, i3);
                                            break;
                                        case 13:
                                            bdeVar = new bde(ekx.p, 8);
                                            break;
                                        default:
                                            throw new UnsupportedOperationException(faqVar5.dq().toString());
                                    }
                                    bdeVar.f12608b = faqVar6;
                                    bdeVar.f12609c = faqVar4;
                                    linkedList3.addLast(bdeVar);
                                }
                            }
                        }
                        linkedList3.addLast(faqVar4);
                    }
                    i5--;
                    linkedList = linkedList3;
                }
                throw new IllegalArgumentException(str.substring(0, i2));
            }
            dq = ((faq) it.next()).dq();
            abo aboVar = abo.LEFT_PAREN;
        } while (!(dq instanceof abo));
        throw new IllegalArgumentException(str.substring(0, i2));
    }

    public static void bc(Parcel parcel, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        throw new csj(awf.ad(awf.z(i3, i2, "Expected size ", " got ", " (0x"), Integer.toHexString(i2), ")"), parcel);
    }

    public static String bd(Parcel parcel, int i2) {
        int ae = ae(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (ae == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + ae);
        return readString;
    }

    public static arl be(hed hedVar, yu yuVar, boolean z2, ArrayList arrayList) {
        cwx cwxVar;
        cci cciVar = hedVar.am;
        dpb dpbVar = (dpb) ((ghr) arrayList.get(4)).f18176f;
        if (dpbVar.e().b()) {
            throw new gck("Not yet supported");
        }
        dwg dwgVar = cciVar.f12631ab;
        ayu l2 = ayu.l(dwgVar, cciVar.ak, "", (fw) ((ghr) arrayList.get(2)).f18176f);
        ecx e2 = dpbVar.e();
        arl arlVar = new arl(l2, yuVar, eqp.CUSTOM, false, z2);
        arlVar._bm = e2;
        arlVar.f10719a = ayu.l(dwgVar, ve.h(dwgVar, l2.f11079g), (String) ((ghr) arrayList.get(1)).f18176f, (fw) ((ghr) arrayList.get(3)).f18176f);
        ayu j2 = ayu.j(dwgVar, dpbVar.d());
        eqp aa = eyt.aa(e2);
        List list = j2.f11075c;
        int size = list.size();
        boolean z3 = aa != eqp.STATIC;
        if (z3) {
            size++;
        }
        hdc hdcVar = new hdc(j2, aa, size);
        List list2 = arlVar.aj;
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            hdcVar._an(arlVar.j(i2).b());
        }
        if (size > size2) {
            int i3 = z3 ? size2 - 1 : size2;
            while (size2 < size) {
                if (i3 < 0) {
                    cwxVar = j2.f11076d.f20149d;
                } else {
                    cwxVar = (cwx) list.get(i3);
                    i3++;
                }
                hdcVar._an(new add(awf.ac(size2, ada.COLUMN_VALUE), cwxVar));
                size2++;
            }
        }
        if (e2 == ecx.INVOKE_CONSTRUCTOR) {
            arlVar.f10720d = new eew(hedVar, hdcVar, hdcVar.ad);
        } else {
            arlVar.f10720d = hdcVar;
        }
        hed x2 = dwgVar.x(j2);
        if (x2 != null) {
            arlVar.f10720d.m(x2);
            if (x2.ax.bb() && x2.am.equals(cciVar)) {
                x2.w(csv.DONT_GENERATE);
                arlVar.y = true;
            }
        }
        if (!arlVar.y) {
            arlVar._bn = evh.g(((fw) ((ghr) arrayList.get(5)).f18176f).a(), new gpn(13)).equals(list);
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            ((gsh) it.next()).w(csv.DONT_INLINE);
        }
        int k2 = yuVar.k();
        if (k2 != -1) {
            cwx cwxVar2 = hedVar.aw;
            dba dbaVar = gsh.ad;
            arlVar.ax(new gks(k2, cwxVar2));
        }
        return arlVar;
    }

    public static void bf(Object obj, Bundle bundle) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }

    public static String[] bg(Parcel parcel, int i2) {
        int ae = ae(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (ae == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + ae);
        return createStringArray;
    }

    public static asd bh(int i2) {
        if (m == null) {
            synchronized (dyd.class) {
                try {
                    if (m == null) {
                        SparseArray sparseArray = new SparseArray();
                        m = sparseArray;
                        sparseArray.put(37, new asd(37, "17", "X"));
                        m.put(36, new asd(36, "16", "W"));
                        m.put(35, new asd(35, "15", "V"));
                        m.put(34, new asd(34, "14", "U"));
                        m.put(33, new asd(33, "13", "T"));
                        m.put(32, new asd(32, "12L", "S"));
                        m.put(31, new asd(31, "12", "S"));
                        m.put(30, new asd(30, "11", "R"));
                        m.put(29, new asd(29, "10", "Q"));
                        m.put(28, new asd(28, "9", "Pie"));
                        m.put(27, new asd(27, "8.1.0", "Oreo"));
                        m.put(26, new asd(26, "8.0.0", "Oreo"));
                        m.put(25, new asd(25, "7.1", "Nougat"));
                        m.put(24, new asd(24, "7.0", "Nougat"));
                        m.put(23, new asd(23, "6.0", "Marshmallow"));
                        m.put(22, new asd(22, "5.1", "Lollipop MR1"));
                        m.put(21, new asd(21, "5.0", "Lollipop"));
                        m.put(20, new asd(20, "4.4W", "KitKat for watches"));
                        m.put(19, new asd(19, "4.4", "KitKat"));
                        m.put(18, new asd(18, "4.3", "Jelly Bean MR2"));
                        m.put(17, new asd(17, "4.2", "Jelly Bean MR1"));
                        m.put(16, new asd(16, "4.1", "Jelly Bean"));
                        m.put(15, new asd(15, "4.0", "Ice Cream Sandwich MR1"));
                        m.put(14, new asd(14, "4.0", "Ice Cream Sandwich"));
                        m.put(13, new asd(13, "3.2", "Honeycomb MR2"));
                        m.put(12, new asd(12, "3.1", "Honeycomb MR1"));
                        m.put(11, new asd(11, "3.0", "Honeycomb"));
                        m.put(10, new asd(10, "2.3", "Gingerbread MR1"));
                        m.put(9, new asd(9, "2.3", "Gingerbread"));
                        m.put(8, new asd(8, "2.2", "Froyo"));
                        m.put(7, new asd(7, "2.1", "Eclair MR1"));
                        m.put(6, new asd(6, "2.0.1", "Eclair"));
                        m.put(5, new asd(5, "2.0", "Eclair"));
                        m.put(4, new asd(4, "1.6", "Donut"));
                        m.put(3, new asd(3, "1.5", "Cupcake"));
                        m.put(2, new asd(2, "1.1", "Beta"));
                        m.put(1, new asd(1, "1.0", "Alpha"));
                    }
                } finally {
                }
            }
        }
        return (asd) m.get(i2);
    }

    public static boolean bi(Context context) {
        return az(context) == 2;
    }

    public static boolean bj() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean bk(AccessibilityNodeInfo accessibilityNodeInfo, int i2, CharSequence charSequence) {
        if (accessibilityNodeInfo == null || !am(accessibilityNodeInfo.getPackageName())) {
            return false;
        }
        if (!TextUtils.isEmpty(charSequence) && !TextUtils.equals(charSequence, accessibilityNodeInfo.getPackageName())) {
            return false;
        }
        if (i2 >= 0 && accessibilityNodeInfo.getWindowId() != i2) {
            return false;
        }
        accessibilityNodeInfo.getBoundsInScreen(new Rect());
        return !ern.k(r2);
    }

    public static int bl(Parcel parcel) {
        int readInt = parcel.readInt();
        int ae = ae(parcel, readInt);
        char c2 = (char) readInt;
        int dataPosition = parcel.dataPosition();
        if (c2 != 20293) {
            throw new csj("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(readInt))), parcel);
        }
        int i2 = ae + dataPosition;
        if (i2 < dataPosition || i2 > parcel.dataSize()) {
            throw new csj(tn.t(dataPosition, i2, "Size read is invalid start=", " end="), parcel);
        }
        return i2;
    }

    public static void bm(Parcel parcel, int i2, int i3) {
        int ae = ae(parcel, i2);
        if (ae == i3) {
            return;
        }
        throw new csj(awf.ad(awf.z(i3, ae, "Expected size ", " got ", " (0x"), Integer.toHexString(ae), ")"), parcel);
    }

    public static void bn(String str) {
        if (str.length() <= 0) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if ('!' > charAt || charAt >= 127) {
                throw new IllegalArgumentException(erq.h("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str).toString());
            }
        }
    }

    public static IBinder bo(Parcel parcel, int i2) {
        int ae = ae(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (ae == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + ae);
        return readStrongBinder;
    }

    public static boolean bp(int i2) {
        return Build.VERSION.SDK_INT >= i2;
    }

    public static boolean bq(int i2) {
        return Build.VERSION.SDK_INT == i2;
    }

    public static byte[] br(Parcel parcel, int i2) {
        int ae = ae(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (ae == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + ae);
        return createByteArray;
    }

    public static List bs(fpa fpaVar, String str) {
        LinkedHashMap linkedHashMap = fpaVar.f17181c;
        if (linkedHashMap.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ghr ghrVar = (ghr) linkedHashMap.get(str);
        return (ghrVar == null || ghrVar.f18175b != dnd.ENCODED_ARRAY) ? Collections.EMPTY_LIST : (List) ghrVar.f18176f;
    }

    public abstract long bt();
}
