package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class ebt {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f15253a = {0, 4, 8};

    /* renamed from: b, reason: collision with root package name */
    public static final SparseIntArray f15254b;

    /* renamed from: c, reason: collision with root package name */
    public static final SparseIntArray f15255c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f15256d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final boolean f15257e = true;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f15258f = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f15254b = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f15255c = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(101, 6);
        sparseIntArray.append(102, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(106, 13);
        sparseIntArray.append(109, 16);
        sparseIntArray.append(107, 14);
        sparseIntArray.append(104, 11);
        sparseIntArray.append(108, 15);
        sparseIntArray.append(105, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(121, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(122, 67);
        sparseIntArray.append(113, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(112, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(111, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(123, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(119, 84);
        sparseIntArray.append(118, 85);
        sparseIntArray.append(117, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(105, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(106, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(107, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(104, 83);
        sparseIntArray2.append(103, 84);
        sparseIntArray2.append(102, 85);
        sparseIntArray2.append(101, 86);
        sparseIntArray2.append(94, 97);
    }

    public static int g(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    public static int[] h(fqo fqoVar, String str) {
        int i;
        String[] split = str.split(",");
        Context context = fqoVar.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            Object obj = null;
            try {
                i = ewf.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, TTDownloadField.TT_ID, context.getPackageName());
            }
            if (i == 0 && fqoVar.isInEditMode() && (fqoVar.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) fqoVar.getParent();
                if (awf.n(trim)) {
                    HashMap hashMap = constraintLayout.o;
                    if (hashMap != null && hashMap.containsKey(trim)) {
                        obj = constraintLayout.o.get(trim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    i = ((Integer) obj).intValue();
                }
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        return i3 != split.length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    public static djm i(Context context, AttributeSet attributeSet, boolean z) {
        int[] iArr;
        djm djmVar = new djm();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? bfv.i : bfv.f11477d);
        String[] strArr = buj.j;
        dqy dqyVar = djmVar.f14283e;
        edp edpVar = djmVar.f14280b;
        ggo ggoVar = djmVar.f14284f;
        crp crpVar = djmVar.f14279a;
        int[] iArr2 = f15253a;
        SparseIntArray sparseIntArray = f15254b;
        if (z) {
            int indexCount = obtainStyledAttributes.getIndexCount();
            dyw dywVar = new dyw();
            dywVar.f15105f = new int[10];
            dywVar.i = new int[10];
            dywVar.k = 0;
            dywVar.f15102c = new int[10];
            dywVar.f15104e = new float[10];
            dywVar.f15106g = 0;
            dywVar.l = new int[5];
            dywVar.f15100a = new String[5];
            dywVar.h = 0;
            dywVar.j = new int[4];
            dywVar.f15101b = new boolean[4];
            dywVar.f15103d = 0;
            ggoVar.getClass();
            crpVar.getClass();
            edpVar.getClass();
            int i = 0;
            while (i < indexCount) {
                int index = obtainStyledAttributes.getIndex(i);
                String[] strArr2 = strArr;
                switch (f15255c.get(index)) {
                    case 2:
                        iArr = iArr2;
                        dywVar.o(2, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.bk));
                        break;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        Integer.toHexString(index);
                        sparseIntArray.get(index);
                        iArr = iArr2;
                        break;
                    case 5:
                        iArr = iArr2;
                        dywVar.p(5, obtainStyledAttributes.getString(index));
                        break;
                    case 6:
                        iArr = iArr2;
                        dywVar.o(6, obtainStyledAttributes.getDimensionPixelOffset(index, crpVar.ad));
                        break;
                    case 7:
                        iArr = iArr2;
                        dywVar.o(7, obtainStyledAttributes.getDimensionPixelOffset(index, crpVar.f13392ab));
                        break;
                    case 8:
                        iArr = iArr2;
                        dywVar.o(8, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.am));
                        break;
                    case 11:
                        iArr = iArr2;
                        dywVar.o(11, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.as));
                        break;
                    case 12:
                        iArr = iArr2;
                        dywVar.o(12, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.m));
                        break;
                    case 13:
                        iArr = iArr2;
                        dywVar.o(13, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.ae));
                        break;
                    case 14:
                        iArr = iArr2;
                        dywVar.o(14, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.bc));
                        break;
                    case 15:
                        iArr = iArr2;
                        dywVar.o(15, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.ar));
                        break;
                    case 16:
                        iArr = iArr2;
                        dywVar.o(16, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.n));
                        break;
                    case 17:
                        iArr = iArr2;
                        dywVar.o(17, obtainStyledAttributes.getDimensionPixelOffset(index, crpVar.t));
                        break;
                    case 18:
                        iArr = iArr2;
                        dywVar.o(18, obtainStyledAttributes.getDimensionPixelOffset(index, crpVar.x));
                        break;
                    case 19:
                        iArr = iArr2;
                        dywVar.n(19, obtainStyledAttributes.getFloat(index, crpVar.ak));
                        break;
                    case 20:
                        iArr = iArr2;
                        dywVar.n(20, obtainStyledAttributes.getFloat(index, crpVar.aj));
                        break;
                    case 21:
                        iArr = iArr2;
                        dywVar.o(21, obtainStyledAttributes.getLayoutDimension(index, crpVar.bf));
                        break;
                    case 22:
                        iArr = iArr2;
                        dywVar.o(22, iArr[obtainStyledAttributes.getInt(index, dqyVar.f14658b)]);
                        break;
                    case 23:
                        iArr = iArr2;
                        dywVar.o(23, obtainStyledAttributes.getLayoutDimension(index, crpVar.av));
                        break;
                    case 24:
                        iArr = iArr2;
                        dywVar.o(24, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.bb));
                        break;
                    case 27:
                        iArr = iArr2;
                        dywVar.o(27, obtainStyledAttributes.getInt(index, crpVar.bl));
                        break;
                    case 28:
                        iArr = iArr2;
                        dywVar.o(28, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.p));
                        break;
                    case 31:
                        iArr = iArr2;
                        dywVar.o(31, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.ag));
                        break;
                    case 34:
                        iArr = iArr2;
                        dywVar.o(34, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.f13398g));
                        break;
                    case 37:
                        iArr = iArr2;
                        dywVar.n(37, obtainStyledAttributes.getFloat(index, crpVar.bm));
                        break;
                    case 38:
                        iArr = iArr2;
                        int resourceId = obtainStyledAttributes.getResourceId(index, djmVar.f14281c);
                        djmVar.f14281c = resourceId;
                        dywVar.o(38, resourceId);
                        break;
                    case 39:
                        iArr = iArr2;
                        dywVar.n(39, obtainStyledAttributes.getFloat(index, crpVar.y));
                        break;
                    case 40:
                        iArr = iArr2;
                        dywVar.n(40, obtainStyledAttributes.getFloat(index, crpVar.aw));
                        break;
                    case 41:
                        iArr = iArr2;
                        dywVar.o(41, obtainStyledAttributes.getInt(index, crpVar.r));
                        break;
                    case 42:
                        iArr = iArr2;
                        dywVar.o(42, obtainStyledAttributes.getInt(index, crpVar.ai));
                        break;
                    case 43:
                        iArr = iArr2;
                        dywVar.n(43, obtainStyledAttributes.getFloat(index, dqyVar.f14660d));
                        break;
                    case 44:
                        iArr = iArr2;
                        dywVar.m(44, true);
                        dywVar.n(44, obtainStyledAttributes.getDimension(index, edpVar.i));
                        break;
                    case 45:
                        iArr = iArr2;
                        dywVar.n(45, obtainStyledAttributes.getFloat(index, edpVar.k));
                        break;
                    case 46:
                        iArr = iArr2;
                        dywVar.n(46, obtainStyledAttributes.getFloat(index, edpVar.m));
                        break;
                    case 47:
                        iArr = iArr2;
                        dywVar.n(47, obtainStyledAttributes.getFloat(index, edpVar.f15370d));
                        break;
                    case 48:
                        iArr = iArr2;
                        dywVar.n(48, obtainStyledAttributes.getFloat(index, edpVar.f15372f));
                        break;
                    case 49:
                        iArr = iArr2;
                        dywVar.n(49, obtainStyledAttributes.getDimension(index, edpVar.h));
                        break;
                    case 50:
                        iArr = iArr2;
                        dywVar.n(50, obtainStyledAttributes.getDimension(index, edpVar.n));
                        break;
                    case 51:
                        iArr = iArr2;
                        dywVar.n(51, obtainStyledAttributes.getDimension(index, edpVar.j));
                        break;
                    case 52:
                        iArr = iArr2;
                        dywVar.n(52, obtainStyledAttributes.getDimension(index, edpVar.l));
                        break;
                    case 53:
                        iArr = iArr2;
                        dywVar.n(53, obtainStyledAttributes.getDimension(index, edpVar.f15369c));
                        break;
                    case 54:
                        iArr = iArr2;
                        dywVar.o(54, obtainStyledAttributes.getInt(index, crpVar.af));
                        break;
                    case 55:
                        iArr = iArr2;
                        dywVar.o(55, obtainStyledAttributes.getInt(index, crpVar.bp));
                        break;
                    case 56:
                        iArr = iArr2;
                        dywVar.o(56, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.bj));
                        break;
                    case 57:
                        iArr = iArr2;
                        dywVar.o(57, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.aq));
                        break;
                    case 58:
                        iArr = iArr2;
                        dywVar.o(58, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.ac));
                        break;
                    case 59:
                        iArr = iArr2;
                        dywVar.o(59, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.q));
                        break;
                    case 60:
                        iArr = iArr2;
                        dywVar.n(60, obtainStyledAttributes.getFloat(index, edpVar.f15373g));
                        break;
                    case 62:
                        iArr = iArr2;
                        dywVar.o(62, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.az));
                        break;
                    case 63:
                        iArr = iArr2;
                        dywVar.n(63, obtainStyledAttributes.getFloat(index, crpVar.u));
                        break;
                    case 64:
                        iArr = iArr2;
                        dywVar.o(64, g(obtainStyledAttributes, index, ggoVar.f18109e));
                        break;
                    case 65:
                        iArr = iArr2;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            dywVar.p(65, obtainStyledAttributes.getString(index));
                        } else {
                            dywVar.p(65, strArr2[obtainStyledAttributes.getInteger(index, 0)]);
                        }
                        break;
                    case 66:
                        iArr = iArr2;
                        dywVar.o(66, obtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        iArr = iArr2;
                        dywVar.n(67, obtainStyledAttributes.getFloat(index, ggoVar.f18108d));
                        break;
                    case 68:
                        iArr = iArr2;
                        dywVar.n(68, obtainStyledAttributes.getFloat(index, dqyVar.f14657a));
                        break;
                    case 69:
                        iArr = iArr2;
                        dywVar.n(69, obtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 70:
                        iArr = iArr2;
                        dywVar.n(70, obtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 71:
                        iArr = iArr2;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        iArr = iArr2;
                        dywVar.o(72, obtainStyledAttributes.getInt(index, crpVar.bh));
                        break;
                    case 73:
                        iArr = iArr2;
                        dywVar.o(73, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.w));
                        break;
                    case 74:
                        iArr = iArr2;
                        dywVar.p(74, obtainStyledAttributes.getString(index));
                        break;
                    case 75:
                        iArr = iArr2;
                        dywVar.m(75, obtainStyledAttributes.getBoolean(index, crpVar.au));
                        break;
                    case 76:
                        iArr = iArr2;
                        dywVar.o(76, obtainStyledAttributes.getInt(index, ggoVar.i));
                        break;
                    case 77:
                        iArr = iArr2;
                        dywVar.p(77, obtainStyledAttributes.getString(index));
                        break;
                    case 78:
                        iArr = iArr2;
                        dywVar.o(78, obtainStyledAttributes.getInt(index, dqyVar.f14659c));
                        break;
                    case 79:
                        iArr = iArr2;
                        dywVar.n(79, obtainStyledAttributes.getFloat(index, ggoVar.f18107c));
                        break;
                    case 80:
                        iArr = iArr2;
                        dywVar.m(80, obtainStyledAttributes.getBoolean(index, crpVar.bi));
                        break;
                    case 81:
                        iArr = iArr2;
                        dywVar.m(81, obtainStyledAttributes.getBoolean(index, crpVar.i));
                        break;
                    case 82:
                        iArr = iArr2;
                        dywVar.o(82, obtainStyledAttributes.getInteger(index, ggoVar.h));
                        break;
                    case 83:
                        iArr = iArr2;
                        dywVar.o(83, g(obtainStyledAttributes, index, edpVar.f15368b));
                        break;
                    case 84:
                        iArr = iArr2;
                        dywVar.o(84, obtainStyledAttributes.getInteger(index, ggoVar.j));
                        break;
                    case 85:
                        iArr = iArr2;
                        dywVar.n(85, obtainStyledAttributes.getFloat(index, ggoVar.f18110f));
                        break;
                    case 86:
                        iArr = iArr2;
                        int i2 = obtainStyledAttributes.peekValue(index).type;
                        if (i2 == 1) {
                            int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                            ggoVar.f18111g = resourceId2;
                            dywVar.o(89, resourceId2);
                            if (ggoVar.f18111g != -1) {
                                dywVar.o(88, -2);
                            }
                        } else if (i2 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            ggoVar.f18106b = string;
                            dywVar.p(90, string);
                            if (ggoVar.f18106b.indexOf("/") > 0) {
                                int resourceId3 = obtainStyledAttributes.getResourceId(index, -1);
                                ggoVar.f18111g = resourceId3;
                                dywVar.o(89, resourceId3);
                                dywVar.o(88, -2);
                            } else {
                                dywVar.o(88, -1);
                            }
                        } else {
                            dywVar.o(88, obtainStyledAttributes.getInteger(index, ggoVar.f18111g));
                        }
                        break;
                    case 87:
                        iArr = iArr2;
                        Integer.toHexString(index);
                        sparseIntArray.get(index);
                        break;
                    case 93:
                        iArr = iArr2;
                        dywVar.o(93, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.h));
                        break;
                    case 94:
                        iArr = iArr2;
                        dywVar.o(94, obtainStyledAttributes.getDimensionPixelSize(index, crpVar.be));
                        break;
                    case 95:
                        iArr = iArr2;
                        j(dywVar, obtainStyledAttributes, index, 0);
                        break;
                    case 96:
                        iArr = iArr2;
                        j(dywVar, obtainStyledAttributes, index, 1);
                        break;
                    case 97:
                        iArr = iArr2;
                        dywVar.o(97, obtainStyledAttributes.getInt(index, crpVar.o));
                        break;
                    case 98:
                        int i3 = ffd.w;
                        iArr = iArr2;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                        } else {
                            djmVar.f14281c = obtainStyledAttributes.getResourceId(index, djmVar.f14281c);
                        }
                        break;
                    case 99:
                        dywVar.m(99, obtainStyledAttributes.getBoolean(index, crpVar.bn));
                        iArr = iArr2;
                        break;
                }
                i++;
                strArr = strArr2;
                iArr2 = iArr;
            }
        } else {
            int indexCount2 = obtainStyledAttributes.getIndexCount();
            for (int i4 = 0; i4 < indexCount2; i4++) {
                int index2 = obtainStyledAttributes.getIndex(i4);
                if (index2 != 1 && 23 != index2 && 24 != index2) {
                    ggoVar.getClass();
                    crpVar.getClass();
                    edpVar.getClass();
                }
                switch (sparseIntArray.get(index2)) {
                    case 1:
                        crpVar.ao = g(obtainStyledAttributes, index2, crpVar.ao);
                        break;
                    case 2:
                        crpVar.bk = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.bk);
                        break;
                    case 3:
                        crpVar.k = g(obtainStyledAttributes, index2, crpVar.k);
                        break;
                    case 4:
                        crpVar.s = g(obtainStyledAttributes, index2, crpVar.s);
                        break;
                    case 5:
                        crpVar.l = obtainStyledAttributes.getString(index2);
                        break;
                    case 6:
                        crpVar.ad = obtainStyledAttributes.getDimensionPixelOffset(index2, crpVar.ad);
                        break;
                    case 7:
                        crpVar.f13392ab = obtainStyledAttributes.getDimensionPixelOffset(index2, crpVar.f13392ab);
                        break;
                    case 8:
                        crpVar.am = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.am);
                        break;
                    case 9:
                        crpVar.ah = g(obtainStyledAttributes, index2, crpVar.ah);
                        break;
                    case 10:
                        crpVar.aa = g(obtainStyledAttributes, index2, crpVar.aa);
                        break;
                    case 11:
                        crpVar.as = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.as);
                        break;
                    case 12:
                        crpVar.m = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.m);
                        break;
                    case 13:
                        crpVar.ae = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.ae);
                        break;
                    case 14:
                        crpVar.bc = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.bc);
                        break;
                    case 15:
                        crpVar.ar = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.ar);
                        break;
                    case 16:
                        crpVar.n = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.n);
                        break;
                    case 17:
                        crpVar.t = obtainStyledAttributes.getDimensionPixelOffset(index2, crpVar.t);
                        break;
                    case 18:
                        crpVar.x = obtainStyledAttributes.getDimensionPixelOffset(index2, crpVar.x);
                        break;
                    case 19:
                        crpVar.ak = obtainStyledAttributes.getFloat(index2, crpVar.ak);
                        break;
                    case 20:
                        crpVar.aj = obtainStyledAttributes.getFloat(index2, crpVar.aj);
                        break;
                    case 21:
                        crpVar.bf = obtainStyledAttributes.getLayoutDimension(index2, crpVar.bf);
                        break;
                    case 22:
                        int i5 = obtainStyledAttributes.getInt(index2, dqyVar.f14658b);
                        dqyVar.f14658b = i5;
                        dqyVar.f14658b = iArr2[i5];
                        break;
                    case 23:
                        crpVar.av = obtainStyledAttributes.getLayoutDimension(index2, crpVar.av);
                        break;
                    case 24:
                        crpVar.bb = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.bb);
                        break;
                    case 25:
                        crpVar.f13395d = g(obtainStyledAttributes, index2, crpVar.f13395d);
                        break;
                    case 26:
                        crpVar.at = g(obtainStyledAttributes, index2, crpVar.at);
                        break;
                    case 27:
                        crpVar.bl = obtainStyledAttributes.getInt(index2, crpVar.bl);
                        break;
                    case 28:
                        crpVar.p = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.p);
                        break;
                    case 29:
                        crpVar.ax = g(obtainStyledAttributes, index2, crpVar.ax);
                        break;
                    case 30:
                        crpVar.f13396e = g(obtainStyledAttributes, index2, crpVar.f13396e);
                        break;
                    case 31:
                        crpVar.ag = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.ag);
                        break;
                    case 32:
                        crpVar.an = g(obtainStyledAttributes, index2, crpVar.an);
                        break;
                    case 33:
                        crpVar.ba = g(obtainStyledAttributes, index2, crpVar.ba);
                        break;
                    case 34:
                        crpVar.f13398g = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.f13398g);
                        break;
                    case 35:
                        crpVar.ap = g(obtainStyledAttributes, index2, crpVar.ap);
                        break;
                    case 36:
                        crpVar.v = g(obtainStyledAttributes, index2, crpVar.v);
                        break;
                    case 37:
                        crpVar.bm = obtainStyledAttributes.getFloat(index2, crpVar.bm);
                        break;
                    case 38:
                        djmVar.f14281c = obtainStyledAttributes.getResourceId(index2, djmVar.f14281c);
                        break;
                    case 39:
                        crpVar.y = obtainStyledAttributes.getFloat(index2, crpVar.y);
                        break;
                    case 40:
                        crpVar.aw = obtainStyledAttributes.getFloat(index2, crpVar.aw);
                        break;
                    case 41:
                        crpVar.r = obtainStyledAttributes.getInt(index2, crpVar.r);
                        break;
                    case 42:
                        crpVar.ai = obtainStyledAttributes.getInt(index2, crpVar.ai);
                        break;
                    case 43:
                        dqyVar.f14660d = obtainStyledAttributes.getFloat(index2, dqyVar.f14660d);
                        break;
                    case 44:
                        edpVar.f15371e = true;
                        edpVar.i = obtainStyledAttributes.getDimension(index2, edpVar.i);
                        break;
                    case 45:
                        edpVar.k = obtainStyledAttributes.getFloat(index2, edpVar.k);
                        break;
                    case 46:
                        edpVar.m = obtainStyledAttributes.getFloat(index2, edpVar.m);
                        break;
                    case 47:
                        edpVar.f15370d = obtainStyledAttributes.getFloat(index2, edpVar.f15370d);
                        break;
                    case 48:
                        edpVar.f15372f = obtainStyledAttributes.getFloat(index2, edpVar.f15372f);
                        break;
                    case 49:
                        edpVar.h = obtainStyledAttributes.getDimension(index2, edpVar.h);
                        break;
                    case 50:
                        edpVar.n = obtainStyledAttributes.getDimension(index2, edpVar.n);
                        break;
                    case 51:
                        edpVar.j = obtainStyledAttributes.getDimension(index2, edpVar.j);
                        break;
                    case 52:
                        edpVar.l = obtainStyledAttributes.getDimension(index2, edpVar.l);
                        break;
                    case 53:
                        edpVar.f15369c = obtainStyledAttributes.getDimension(index2, edpVar.f15369c);
                        break;
                    case 54:
                        crpVar.af = obtainStyledAttributes.getInt(index2, crpVar.af);
                        break;
                    case 55:
                        crpVar.bp = obtainStyledAttributes.getInt(index2, crpVar.bp);
                        break;
                    case 56:
                        crpVar.bj = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.bj);
                        break;
                    case 57:
                        crpVar.aq = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.aq);
                        break;
                    case 58:
                        crpVar.ac = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.ac);
                        break;
                    case 59:
                        crpVar.q = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.q);
                        break;
                    case 60:
                        edpVar.f15373g = obtainStyledAttributes.getFloat(index2, edpVar.f15373g);
                        break;
                    case 61:
                        crpVar.f13393b = g(obtainStyledAttributes, index2, crpVar.f13393b);
                        break;
                    case 62:
                        crpVar.az = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.az);
                        break;
                    case 63:
                        crpVar.u = obtainStyledAttributes.getFloat(index2, crpVar.u);
                        break;
                    case 64:
                        ggoVar.f18109e = g(obtainStyledAttributes, index2, ggoVar.f18109e);
                        break;
                    case 65:
                        if (obtainStyledAttributes.peekValue(index2).type == 3) {
                            obtainStyledAttributes.getString(index2);
                            ggoVar.getClass();
                            break;
                        } else {
                            String str = strArr[obtainStyledAttributes.getInteger(index2, 0)];
                            ggoVar.getClass();
                            break;
                        }
                    case 66:
                        obtainStyledAttributes.getInt(index2, 0);
                        ggoVar.getClass();
                        break;
                    case 67:
                        ggoVar.f18108d = obtainStyledAttributes.getFloat(index2, ggoVar.f18108d);
                        break;
                    case 68:
                        dqyVar.f14657a = obtainStyledAttributes.getFloat(index2, dqyVar.f14657a);
                        break;
                    case 69:
                        crpVar.j = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 70:
                        crpVar.bd = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 71:
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        crpVar.bh = obtainStyledAttributes.getInt(index2, crpVar.bh);
                        break;
                    case 73:
                        crpVar.w = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.w);
                        break;
                    case 74:
                        crpVar.bg = obtainStyledAttributes.getString(index2);
                        break;
                    case 75:
                        crpVar.au = obtainStyledAttributes.getBoolean(index2, crpVar.au);
                        break;
                    case 76:
                        ggoVar.i = obtainStyledAttributes.getInt(index2, ggoVar.i);
                        break;
                    case 77:
                        crpVar.al = obtainStyledAttributes.getString(index2);
                        break;
                    case 78:
                        dqyVar.f14659c = obtainStyledAttributes.getInt(index2, dqyVar.f14659c);
                        break;
                    case 79:
                        ggoVar.f18107c = obtainStyledAttributes.getFloat(index2, ggoVar.f18107c);
                        break;
                    case 80:
                        crpVar.bi = obtainStyledAttributes.getBoolean(index2, crpVar.bi);
                        break;
                    case 81:
                        crpVar.i = obtainStyledAttributes.getBoolean(index2, crpVar.i);
                        break;
                    case 82:
                        ggoVar.h = obtainStyledAttributes.getInteger(index2, ggoVar.h);
                        break;
                    case 83:
                        edpVar.f15368b = g(obtainStyledAttributes, index2, edpVar.f15368b);
                        break;
                    case 84:
                        ggoVar.j = obtainStyledAttributes.getInteger(index2, ggoVar.j);
                        break;
                    case 85:
                        ggoVar.f18110f = obtainStyledAttributes.getFloat(index2, ggoVar.f18110f);
                        break;
                    case 86:
                        int i6 = obtainStyledAttributes.peekValue(index2).type;
                        if (i6 == 1) {
                            ggoVar.f18111g = obtainStyledAttributes.getResourceId(index2, -1);
                        } else if (i6 == 3) {
                            String string2 = obtainStyledAttributes.getString(index2);
                            ggoVar.f18106b = string2;
                            if (string2.indexOf("/") > 0) {
                                ggoVar.f18111g = obtainStyledAttributes.getResourceId(index2, -1);
                            }
                        } else {
                            obtainStyledAttributes.getInteger(index2, ggoVar.f18111g);
                        }
                        break;
                    case 87:
                        Integer.toHexString(index2);
                        sparseIntArray.get(index2);
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        Integer.toHexString(index2);
                        sparseIntArray.get(index2);
                        break;
                    case 91:
                        crpVar.ay = g(obtainStyledAttributes, index2, crpVar.ay);
                        break;
                    case 92:
                        crpVar.bo = g(obtainStyledAttributes, index2, crpVar.bo);
                        break;
                    case 93:
                        crpVar.h = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.h);
                        break;
                    case 94:
                        crpVar.be = obtainStyledAttributes.getDimensionPixelSize(index2, crpVar.be);
                        break;
                    case 95:
                        j(crpVar, obtainStyledAttributes, index2, 0);
                        break;
                    case 96:
                        j(crpVar, obtainStyledAttributes, index2, 1);
                        break;
                    case 97:
                        crpVar.o = obtainStyledAttributes.getInt(index2, crpVar.o);
                        break;
                }
            }
            if (crpVar.bg != null) {
                crpVar.f13394c = null;
            }
        }
        obtainStyledAttributes.recycle();
        return djmVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        if (r8 == (-1)) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void j(Object obj, TypedArray typedArray, int i, int i2) {
        int dimensionPixelSize;
        if (obj == null) {
            return;
        }
        int i3 = typedArray.peekValue(i).type;
        boolean z = true;
        int i4 = 0;
        if (i3 == 3) {
            String string = typedArray.getString(i);
            if (string == null) {
                return;
            }
            int indexOf = string.indexOf(61);
            int length = string.length();
            if (indexOf <= 0 || indexOf >= length - 1) {
                return;
            }
            String substring = string.substring(0, indexOf);
            String substring2 = string.substring(indexOf + 1);
            if (substring2.length() > 0) {
                String trim = substring.trim();
                String trim2 = substring2.trim();
                if ("ratio".equalsIgnoreCase(trim)) {
                    if (obj instanceof dnk) {
                        dnk dnkVar = (dnk) obj;
                        if (i2 == 0) {
                            ((ViewGroup.MarginLayoutParams) dnkVar).width = 0;
                        } else {
                            ((ViewGroup.MarginLayoutParams) dnkVar).height = 0;
                        }
                        k(dnkVar, trim2);
                        return;
                    }
                    if (obj instanceof crp) {
                        ((crp) obj).l = trim2;
                        return;
                    } else {
                        if (obj instanceof dyw) {
                            ((dyw) obj).p(5, trim2);
                            return;
                        }
                        return;
                    }
                }
                try {
                    if ("weight".equalsIgnoreCase(trim)) {
                        float parseFloat = Float.parseFloat(trim2);
                        if (obj instanceof dnk) {
                            dnk dnkVar2 = (dnk) obj;
                            if (i2 == 0) {
                                ((ViewGroup.MarginLayoutParams) dnkVar2).width = 0;
                                dnkVar2.f14471f = parseFloat;
                                return;
                            } else {
                                ((ViewGroup.MarginLayoutParams) dnkVar2).height = 0;
                                dnkVar2.bk = parseFloat;
                                return;
                            }
                        }
                        if (obj instanceof crp) {
                            crp crpVar = (crp) obj;
                            if (i2 == 0) {
                                crpVar.av = 0;
                                crpVar.y = parseFloat;
                                return;
                            } else {
                                crpVar.bf = 0;
                                crpVar.aw = parseFloat;
                                return;
                            }
                        }
                        if (obj instanceof dyw) {
                            dyw dywVar = (dyw) obj;
                            if (i2 == 0) {
                                dywVar.o(23, 0);
                                dywVar.n(39, parseFloat);
                                return;
                            } else {
                                dywVar.o(21, 0);
                                dywVar.n(40, parseFloat);
                                return;
                            }
                        }
                        return;
                    }
                    if ("parent".equalsIgnoreCase(trim)) {
                        float max = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, Math.min(1.0f, Float.parseFloat(trim2)));
                        if (obj instanceof dnk) {
                            dnk dnkVar3 = (dnk) obj;
                            if (i2 == 0) {
                                ((ViewGroup.MarginLayoutParams) dnkVar3).width = 0;
                                dnkVar3.aq = max;
                                dnkVar3.f14472g = 2;
                                return;
                            } else {
                                ((ViewGroup.MarginLayoutParams) dnkVar3).height = 0;
                                dnkVar3.be = max;
                                dnkVar3.ad = 2;
                                return;
                            }
                        }
                        if (obj instanceof crp) {
                            crp crpVar2 = (crp) obj;
                            if (i2 == 0) {
                                crpVar2.av = 0;
                                crpVar2.j = max;
                                crpVar2.af = 2;
                                return;
                            } else {
                                crpVar2.bf = 0;
                                crpVar2.bd = max;
                                crpVar2.bp = 2;
                                return;
                            }
                        }
                        if (obj instanceof dyw) {
                            dyw dywVar2 = (dyw) obj;
                            if (i2 == 0) {
                                dywVar2.o(23, 0);
                                dywVar2.o(54, 2);
                                return;
                            } else {
                                dywVar2.o(21, 0);
                                dywVar2.o(55, 2);
                                return;
                            }
                        }
                        return;
                    }
                    return;
                } catch (NumberFormatException unused) {
                    return;
                }
            }
            return;
        }
        if (i3 != 5) {
            dimensionPixelSize = typedArray.getInt(i, 0);
            if (dimensionPixelSize != -4) {
                if (dimensionPixelSize != -3) {
                    if (dimensionPixelSize != -2) {
                    }
                }
                z = false;
                if (obj instanceof dnk) {
                    dnk dnkVar4 = (dnk) obj;
                    if (i2 == 0) {
                        ((ViewGroup.MarginLayoutParams) dnkVar4).width = i4;
                        dnkVar4.ah = z;
                        return;
                    } else {
                        ((ViewGroup.MarginLayoutParams) dnkVar4).height = i4;
                        dnkVar4.ae = z;
                        return;
                    }
                }
                if (obj instanceof crp) {
                    crp crpVar3 = (crp) obj;
                    if (i2 == 0) {
                        crpVar3.av = i4;
                        crpVar3.bi = z;
                        return;
                    } else {
                        crpVar3.bf = i4;
                        crpVar3.i = z;
                        return;
                    }
                }
                if (obj instanceof dyw) {
                    dyw dywVar3 = (dyw) obj;
                    if (i2 == 0) {
                        dywVar3.o(23, i4);
                        dywVar3.m(80, z);
                        return;
                    } else {
                        dywVar3.o(21, i4);
                        dywVar3.m(81, z);
                        return;
                    }
                }
                return;
            }
            i4 = -2;
            if (obj instanceof dnk) {
            }
        } else {
            dimensionPixelSize = typedArray.getDimensionPixelSize(i, 0);
        }
        i4 = dimensionPixelSize;
        z = false;
        if (obj instanceof dnk) {
        }
    }

    public static void k(dnk dnkVar, String str) {
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i = -1;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                i = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
                r2 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 < 0 || indexOf2 >= length - 1) {
                    String substring2 = str.substring(r2);
                    if (substring2.length() > 0) {
                        Float.parseFloat(substring2);
                    }
                } else {
                    String substring3 = str.substring(r2, indexOf2);
                    String substring4 = str.substring(indexOf2 + 1);
                    if (substring3.length() > 0 && substring4.length() > 0) {
                        float parseFloat = Float.parseFloat(substring3);
                        float parseFloat2 = Float.parseFloat(substring4);
                        if (parseFloat > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && parseFloat2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            if (i == 1) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        dnkVar.o = str;
    }

    public final void l(int i) {
        Integer valueOf = Integer.valueOf(i);
        HashMap hashMap = this.f15258f;
        if (!hashMap.containsKey(valueOf)) {
            hashMap.put(Integer.valueOf(i), new djm());
        }
        djm djmVar = (djm) hashMap.get(Integer.valueOf(i));
        if (djmVar == null) {
            return;
        }
        crp crpVar = djmVar.f14279a;
        crpVar.ah = 0;
        crpVar.aa = -1;
    }

    public final void m(ConstraintLayout constraintLayout) {
        HashSet hashSet;
        int i;
        HashMap hashMap;
        ebt ebtVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap2 = ebtVar.f15258f;
        HashSet hashSet2 = new HashSet(hashMap2.keySet());
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!hashMap2.containsKey(Integer.valueOf(id))) {
                try {
                    childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                }
            } else {
                if (ebtVar.f15257e && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1 && hashMap2.containsKey(Integer.valueOf(id))) {
                    hashSet2.remove(Integer.valueOf(id));
                    djm djmVar = (djm) hashMap2.get(Integer.valueOf(id));
                    if (djmVar != null) {
                        dqy dqyVar = djmVar.f14283e;
                        crp crpVar = djmVar.f14279a;
                        edp edpVar = djmVar.f14280b;
                        if (childAt instanceof fqo) {
                            crpVar.f13397f = 1;
                            fqo fqoVar = (fqo) childAt;
                            fqoVar.setId(id);
                            fqoVar.setType(crpVar.bh);
                            fqoVar.setMargin(crpVar.w);
                            fqoVar.setAllowsGoneWidget(crpVar.au);
                            int[] iArr = crpVar.f13394c;
                            if (iArr != null) {
                                fqoVar.setReferencedIds(iArr);
                            } else {
                                String str = crpVar.bg;
                                if (str != null) {
                                    int[] h = h(fqoVar, str);
                                    crpVar.f13394c = h;
                                    fqoVar.setReferencedIds(h);
                                }
                            }
                        }
                        dnk dnkVar = (dnk) childAt.getLayoutParams();
                        dnkVar.bq();
                        djmVar.g(dnkVar);
                        HashMap hashMap3 = djmVar.f14282d;
                        Class<?> cls = childAt.getClass();
                        for (String str2 : hashMap3.keySet()) {
                            frn frnVar = (frn) hashMap3.get(str2);
                            HashSet hashSet3 = hashSet2;
                            String x = !frnVar.f17298c ? tn.x("set", str2) : str2;
                            int i3 = i2;
                            try {
                                int ordinal = frnVar.f17300e.ordinal();
                                Class<?> cls2 = Float.TYPE;
                                Class<?> cls3 = Integer.TYPE;
                                switch (ordinal) {
                                    case 0:
                                        hashMap = hashMap3;
                                        cls.getMethod(x, cls3).invoke(childAt, Integer.valueOf(frnVar.f17301f));
                                        break;
                                    case 1:
                                        hashMap = hashMap3;
                                        cls.getMethod(x, cls2).invoke(childAt, Float.valueOf(frnVar.f17296a));
                                        break;
                                    case 2:
                                        hashMap = hashMap3;
                                        cls.getMethod(x, cls3).invoke(childAt, Integer.valueOf(frnVar.f17302g));
                                        break;
                                    case 3:
                                        hashMap = hashMap3;
                                        Method method = cls.getMethod(x, Drawable.class);
                                        ColorDrawable colorDrawable = new ColorDrawable();
                                        colorDrawable.setColor(frnVar.f17302g);
                                        method.invoke(childAt, colorDrawable);
                                        break;
                                    case 4:
                                        hashMap = hashMap3;
                                        cls.getMethod(x, CharSequence.class).invoke(childAt, frnVar.f17297b);
                                        break;
                                    case 5:
                                        hashMap = hashMap3;
                                        cls.getMethod(x, Boolean.TYPE).invoke(childAt, Boolean.valueOf(frnVar.f17299d));
                                        break;
                                    case 6:
                                        hashMap = hashMap3;
                                        cls.getMethod(x, cls2).invoke(childAt, Float.valueOf(frnVar.f17296a));
                                        break;
                                    case 7:
                                        hashMap = hashMap3;
                                        try {
                                            cls.getMethod(x, cls3).invoke(childAt, Integer.valueOf(frnVar.f17301f));
                                        } catch (IllegalAccessException e2) {
                                            e = e2;
                                            StringBuilder p = awf.p(" Custom Attribute \"", str2, "\" not found on ");
                                            p.append(cls.getName());
                                            Log.e("TransitionLayout", p.toString(), e);
                                            hashSet2 = hashSet3;
                                            i2 = i3;
                                            hashMap3 = hashMap;
                                        } catch (NoSuchMethodException e3) {
                                            e = e3;
                                            Log.e("TransitionLayout", cls.getName() + " must have a method " + x, e);
                                            hashSet2 = hashSet3;
                                            i2 = i3;
                                            hashMap3 = hashMap;
                                        } catch (InvocationTargetException e4) {
                                            e = e4;
                                            StringBuilder p2 = awf.p(" Custom Attribute \"", str2, "\" not found on ");
                                            p2.append(cls.getName());
                                            Log.e("TransitionLayout", p2.toString(), e);
                                            hashSet2 = hashSet3;
                                            i2 = i3;
                                            hashMap3 = hashMap;
                                        }
                                    default:
                                        hashMap = hashMap3;
                                        break;
                                }
                            } catch (IllegalAccessException e5) {
                                e = e5;
                                hashMap = hashMap3;
                            } catch (NoSuchMethodException e6) {
                                e = e6;
                                hashMap = hashMap3;
                            } catch (InvocationTargetException e7) {
                                e = e7;
                                hashMap = hashMap3;
                            }
                            hashSet2 = hashSet3;
                            i2 = i3;
                            hashMap3 = hashMap;
                        }
                        hashSet = hashSet2;
                        i = i2;
                        childAt.setLayoutParams(dnkVar);
                        if (dqyVar.f14659c == 0) {
                            childAt.setVisibility(dqyVar.f14658b);
                        }
                        childAt.setAlpha(dqyVar.f14660d);
                        childAt.setRotation(edpVar.f15373g);
                        childAt.setRotationX(edpVar.k);
                        childAt.setRotationY(edpVar.m);
                        childAt.setScaleX(edpVar.f15370d);
                        childAt.setScaleY(edpVar.f15372f);
                        if (edpVar.f15368b != -1) {
                            if (((View) childAt.getParent()).findViewById(edpVar.f15368b) != null) {
                                float bottom = (r0.getBottom() + r0.getTop()) / 2.0f;
                                float right = (r0.getRight() + r0.getLeft()) / 2.0f;
                                if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                    childAt.setPivotX(right - childAt.getLeft());
                                    childAt.setPivotY(bottom - childAt.getTop());
                                }
                            }
                        } else {
                            if (!Float.isNaN(edpVar.h)) {
                                childAt.setPivotX(edpVar.h);
                            }
                            if (!Float.isNaN(edpVar.n)) {
                                childAt.setPivotY(edpVar.n);
                            }
                        }
                        childAt.setTranslationX(edpVar.j);
                        childAt.setTranslationY(edpVar.l);
                        childAt.setTranslationZ(edpVar.f15369c);
                        if (edpVar.f15371e) {
                            childAt.setElevation(edpVar.i);
                        }
                        i2 = i + 1;
                        ebtVar = this;
                        hashSet2 = hashSet;
                    }
                }
            }
            hashSet = hashSet2;
            i = i2;
            i2 = i + 1;
            ebtVar = this;
            hashSet2 = hashSet;
        }
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            djm djmVar2 = (djm) hashMap2.get(num);
            if (djmVar2 != null) {
                crp crpVar2 = djmVar2.f14279a;
                if (crpVar2.f13397f == 1) {
                    Context context = constraintLayout.getContext();
                    fqo fqoVar2 = new fqo(context);
                    fqoVar2.h = new int[32];
                    fqoVar2.f10835d = new HashMap();
                    fqoVar2.f10836e = context;
                    r rVar = new r();
                    rVar.f19886b = 0;
                    rVar.f19885a = true;
                    rVar.f19887c = 0;
                    rVar.f19888d = false;
                    fqoVar2.f17251c = rVar;
                    fqoVar2.f10837f = rVar;
                    fqoVar2.o();
                    fqoVar2.setVisibility(8);
                    fqoVar2.setId(num.intValue());
                    int[] iArr2 = crpVar2.f13394c;
                    if (iArr2 != null) {
                        fqoVar2.setReferencedIds(iArr2);
                    } else {
                        String str3 = crpVar2.bg;
                        if (str3 != null) {
                            int[] h2 = h(fqoVar2, str3);
                            crpVar2.f13394c = h2;
                            fqoVar2.setReferencedIds(h2);
                        }
                    }
                    fqoVar2.setType(crpVar2.bh);
                    fqoVar2.setMargin(crpVar2.w);
                    dnk q = ConstraintLayout.q();
                    fqoVar2.o();
                    djmVar2.g(q);
                    constraintLayout.addView(fqoVar2, q);
                }
                if (crpVar2.z) {
                    View dqdVar = new dqd(constraintLayout.getContext());
                    dqdVar.setId(num.intValue());
                    dnk q2 = ConstraintLayout.q();
                    djmVar2.g(q2);
                    constraintLayout.addView(dqdVar, q2);
                }
            }
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = constraintLayout.getChildAt(i4);
            if (childAt2 instanceof atw) {
                ((atw) childAt2).l(constraintLayout);
            }
        }
    }

    public final void n(int i) {
        djm djmVar;
        Integer valueOf = Integer.valueOf(i);
        HashMap hashMap = this.f15258f;
        if (!hashMap.containsKey(valueOf) || (djmVar = (djm) hashMap.get(Integer.valueOf(i))) == null) {
            return;
        }
        crp crpVar = djmVar.f14279a;
        crpVar.s = -1;
        crpVar.k = -1;
        crpVar.bk = 0;
        crpVar.as = Integer.MIN_VALUE;
    }

    public final void o(ConstraintLayout constraintLayout) {
        int i;
        HashMap hashMap;
        int i2;
        ebt ebtVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap2 = ebtVar.f15258f;
        hashMap2.clear();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = constraintLayout.getChildAt(i3);
            dnk dnkVar = (dnk) childAt.getLayoutParams();
            int id = childAt.getId();
            if (ebtVar.f15257e && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!hashMap2.containsKey(Integer.valueOf(id))) {
                hashMap2.put(Integer.valueOf(id), new djm());
            }
            djm djmVar = (djm) hashMap2.get(Integer.valueOf(id));
            if (djmVar == null) {
                i = childCount;
                hashMap = hashMap2;
                i2 = i3;
            } else {
                dqy dqyVar = djmVar.f14283e;
                crp crpVar = djmVar.f14279a;
                edp edpVar = djmVar.f14280b;
                i = childCount;
                HashMap hashMap3 = new HashMap();
                hashMap = hashMap2;
                Class<?> cls = childAt.getClass();
                i2 = i3;
                HashMap hashMap4 = ebtVar.f15256d;
                for (String str : hashMap4.keySet()) {
                    frn frnVar = (frn) hashMap4.get(str);
                    HashMap hashMap5 = hashMap4;
                    try {
                        if (str.equals("BackgroundColor")) {
                            hashMap3.put(str, new frn(frnVar, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                        } else {
                            hashMap3.put(str, new frn(frnVar, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                        }
                    } catch (IllegalAccessException e2) {
                        StringBuilder p = awf.p(" Custom Attribute \"", str, "\" not found on ");
                        p.append(cls.getName());
                        Log.e("TransitionLayout", p.toString(), e2);
                    } catch (NoSuchMethodException e3) {
                        Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e3);
                    } catch (InvocationTargetException e4) {
                        StringBuilder p2 = awf.p(" Custom Attribute \"", str, "\" not found on ");
                        p2.append(cls.getName());
                        Log.e("TransitionLayout", p2.toString(), e4);
                    }
                    hashMap4 = hashMap5;
                }
                djmVar.f14282d = hashMap3;
                djmVar.f14281c = id;
                crpVar.f13395d = dnkVar.w;
                crpVar.at = dnkVar.aj;
                crpVar.ax = dnkVar.bn;
                crpVar.f13396e = dnkVar.f14468c;
                crpVar.v = dnkVar.as;
                crpVar.ap = dnkVar.ax;
                crpVar.s = dnkVar.f14469d;
                crpVar.k = dnkVar.u;
                crpVar.ao = dnkVar.ao;
                crpVar.ay = dnkVar.r;
                crpVar.bo = dnkVar.j;
                crpVar.an = dnkVar.am;
                crpVar.ba = dnkVar.ba;
                crpVar.aa = dnkVar.z;
                crpVar.ah = dnkVar.ag;
                crpVar.aj = dnkVar.bl;
                crpVar.bm = dnkVar.bb;
                crpVar.l = dnkVar.o;
                crpVar.f13393b = dnkVar.an;
                crpVar.az = dnkVar.ay;
                crpVar.u = dnkVar.bo;
                crpVar.ad = dnkVar.av;
                crpVar.f13392ab = dnkVar.x;
                crpVar.bl = dnkVar.q;
                crpVar.ak = dnkVar.bf;
                crpVar.t = dnkVar.y;
                crpVar.x = dnkVar.au;
                crpVar.av = ((ViewGroup.MarginLayoutParams) dnkVar).width;
                crpVar.bf = ((ViewGroup.MarginLayoutParams) dnkVar).height;
                crpVar.bb = ((ViewGroup.MarginLayoutParams) dnkVar).leftMargin;
                crpVar.p = ((ViewGroup.MarginLayoutParams) dnkVar).rightMargin;
                crpVar.f13398g = ((ViewGroup.MarginLayoutParams) dnkVar).topMargin;
                crpVar.bk = ((ViewGroup.MarginLayoutParams) dnkVar).bottomMargin;
                crpVar.h = dnkVar.aa;
                crpVar.aw = dnkVar.bk;
                crpVar.y = dnkVar.f14471f;
                crpVar.ai = dnkVar.af;
                crpVar.r = dnkVar.al;
                crpVar.bi = dnkVar.ah;
                crpVar.i = dnkVar.ae;
                crpVar.af = dnkVar.f14472g;
                crpVar.bp = dnkVar.ad;
                crpVar.bj = dnkVar.ar;
                crpVar.aq = dnkVar.l;
                crpVar.ac = dnkVar.m;
                crpVar.q = dnkVar.bc;
                crpVar.j = dnkVar.aq;
                crpVar.bd = dnkVar.be;
                crpVar.al = dnkVar.bp;
                crpVar.n = dnkVar.bm;
                crpVar.as = dnkVar.f14465a;
                crpVar.ae = dnkVar.ai;
                crpVar.bc = dnkVar.k;
                crpVar.ar = dnkVar.az;
                crpVar.m = dnkVar.t;
                crpVar.be = dnkVar.ac;
                crpVar.o = dnkVar.bj;
                crpVar.am = dnkVar.getMarginEnd();
                crpVar.ag = dnkVar.getMarginStart();
                dqyVar.f14658b = childAt.getVisibility();
                dqyVar.f14660d = childAt.getAlpha();
                edpVar.f15373g = childAt.getRotation();
                edpVar.k = childAt.getRotationX();
                edpVar.m = childAt.getRotationY();
                edpVar.f15370d = childAt.getScaleX();
                edpVar.f15372f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    edpVar.h = pivotX;
                    edpVar.n = pivotY;
                }
                edpVar.j = childAt.getTranslationX();
                edpVar.l = childAt.getTranslationY();
                edpVar.f15369c = childAt.getTranslationZ();
                if (edpVar.f15371e) {
                    edpVar.i = childAt.getElevation();
                }
                if (childAt instanceof fqo) {
                    fqo fqoVar = (fqo) childAt;
                    crpVar.au = fqoVar.getAllowsGoneWidget();
                    crpVar.f13394c = fqoVar.getReferencedIds();
                    crpVar.bh = fqoVar.getType();
                    crpVar.w = fqoVar.getMargin();
                }
            }
            i3 = i2 + 1;
            ebtVar = this;
            childCount = i;
            hashMap2 = hashMap;
        }
    }

    public final void p(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    djm i2 = i(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        i2.f14279a.z = true;
                    }
                    this.f15258f.put(Integer.valueOf(i2.f14281c), i2);
                }
            }
        } catch (IOException e2) {
            Log.e("ConstraintSet", "Error parsing resource: " + i, e2);
        } catch (XmlPullParserException e3) {
            Log.e("ConstraintSet", "Error parsing resource: " + i, e3);
        }
    }
}
