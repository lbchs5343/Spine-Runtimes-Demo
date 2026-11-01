package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.aar;
import g.aep;
import g.ahi;
import g.akj;
import g.ar;
import g.atw;
import g.bff;
import g.bfv;
import g.brh;
import g.bwo;
import g.cnr;
import g.dbr;
import g.dih;
import g.dnk;
import g.dos;
import g.dqd;
import g.dza;
import g.dzh;
import g.ebt;
import g.ezi;
import g.fju;
import g.fol;
import g.gbi;
import g.gbx;
import g.gnk;
import g.gri;
import g.gvg;
import g.he;
import g.mi;
import g.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public static ezi f129a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f130b;

    /* renamed from: c, reason: collision with root package name */
    public int f131c;

    /* renamed from: d, reason: collision with root package name */
    public final gri f132d;

    /* renamed from: e, reason: collision with root package name */
    public ebt f133e;

    /* renamed from: f, reason: collision with root package name */
    public final aep f134f;

    /* renamed from: g, reason: collision with root package name */
    public int f135g;
    public akj h;
    public int i;
    public int j;
    public final SparseArray k;
    public int l;
    public final ArrayList m;
    public final SparseArray n;
    public HashMap o;
    public int p;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = new SparseArray();
        this.m = new ArrayList(4);
        this.f134f = new aep();
        this.i = 0;
        this.j = 0;
        this.p = he.UNDEFINED_ITEM_ID;
        this.f131c = he.UNDEFINED_ITEM_ID;
        this.f130b = true;
        this.l = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC;
        this.f133e = null;
        this.h = null;
        this.f135g = -1;
        this.o = new HashMap();
        this.n = new SparseArray();
        this.f132d = new gri(this, this);
        u(attributeSet, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = new SparseArray();
        this.m = new ArrayList(4);
        this.f134f = new aep();
        this.i = 0;
        this.j = 0;
        this.p = he.UNDEFINED_ITEM_ID;
        this.f131c = he.UNDEFINED_ITEM_ID;
        this.f130b = true;
        this.l = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC;
        this.f133e = null;
        this.h = null;
        this.f135g = -1;
        this.o = new HashMap();
        this.n = new SparseArray();
        this.f132d = new gri(this, this);
        u(attributeSet, i);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return max2 > 0 ? max2 : max;
    }

    public static ezi getSharedValues() {
        if (f129a == null) {
            ezi eziVar = new ezi();
            new SparseIntArray();
            new HashMap();
            f129a = eziVar;
        }
        return f129a;
    }

    public static dnk q() {
        dnk dnkVar = new dnk(-2, -2);
        dnkVar.y = -1;
        dnkVar.au = -1;
        dnkVar.bf = -1.0f;
        dnkVar.s = true;
        dnkVar.w = -1;
        dnkVar.aj = -1;
        dnkVar.bn = -1;
        dnkVar.f14468c = -1;
        dnkVar.as = -1;
        dnkVar.ax = -1;
        dnkVar.f14469d = -1;
        dnkVar.u = -1;
        dnkVar.ao = -1;
        dnkVar.r = -1;
        dnkVar.j = -1;
        dnkVar.an = -1;
        dnkVar.ay = 0;
        dnkVar.bo = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        dnkVar.am = -1;
        dnkVar.ba = -1;
        dnkVar.z = -1;
        dnkVar.ag = -1;
        dnkVar.ai = Integer.MIN_VALUE;
        dnkVar.bm = Integer.MIN_VALUE;
        dnkVar.k = Integer.MIN_VALUE;
        dnkVar.f14465a = Integer.MIN_VALUE;
        dnkVar.az = Integer.MIN_VALUE;
        dnkVar.t = Integer.MIN_VALUE;
        dnkVar.ac = Integer.MIN_VALUE;
        dnkVar.aa = 0;
        dnkVar.bl = 0.5f;
        dnkVar.bb = 0.5f;
        dnkVar.o = null;
        dnkVar.f14471f = -1.0f;
        dnkVar.bk = -1.0f;
        dnkVar.al = 0;
        dnkVar.af = 0;
        dnkVar.f14472g = 0;
        dnkVar.ad = 0;
        dnkVar.m = 0;
        dnkVar.bc = 0;
        dnkVar.ar = 0;
        dnkVar.l = 0;
        dnkVar.aq = 1.0f;
        dnkVar.be = 1.0f;
        dnkVar.av = -1;
        dnkVar.x = -1;
        dnkVar.q = -1;
        dnkVar.ah = false;
        dnkVar.ae = false;
        dnkVar.bp = null;
        dnkVar.bj = 0;
        dnkVar.ap = true;
        dnkVar.f14466ab = true;
        dnkVar.p = false;
        dnkVar.i = false;
        dnkVar.bd = false;
        dnkVar.bh = -1;
        dnkVar.v = -1;
        dnkVar.f14470e = -1;
        dnkVar.f14467b = -1;
        dnkVar.bg = Integer.MIN_VALUE;
        dnkVar.ak = Integer.MIN_VALUE;
        dnkVar.bi = 0.5f;
        dnkVar.aw = new brh();
        return dnkVar;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof dnk;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.m;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                ((atw) arrayList.get(i)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f2 = i3;
                        float f3 = i4;
                        float f4 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f2, f3, f4, f3, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f4, f3, f4, parseInt4, paint);
                        canvas.drawLine(f4, parseInt4, f2, parseInt4, paint);
                        canvas.drawLine(f2, parseInt4, f2, f3, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f2, f3, f4, parseInt4, paint);
                        canvas.drawLine(f2, parseInt4, f4, f3, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f130b = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return q();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        dnk dnkVar = new dnk(context, attributeSet);
        dnkVar.y = -1;
        dnkVar.au = -1;
        dnkVar.bf = -1.0f;
        dnkVar.s = true;
        dnkVar.w = -1;
        dnkVar.aj = -1;
        dnkVar.bn = -1;
        dnkVar.f14468c = -1;
        dnkVar.as = -1;
        dnkVar.ax = -1;
        dnkVar.f14469d = -1;
        dnkVar.u = -1;
        dnkVar.ao = -1;
        dnkVar.r = -1;
        dnkVar.j = -1;
        dnkVar.an = -1;
        dnkVar.ay = 0;
        dnkVar.bo = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        dnkVar.am = -1;
        dnkVar.ba = -1;
        dnkVar.z = -1;
        dnkVar.ag = -1;
        dnkVar.ai = Integer.MIN_VALUE;
        dnkVar.bm = Integer.MIN_VALUE;
        dnkVar.k = Integer.MIN_VALUE;
        dnkVar.f14465a = Integer.MIN_VALUE;
        dnkVar.az = Integer.MIN_VALUE;
        dnkVar.t = Integer.MIN_VALUE;
        dnkVar.ac = Integer.MIN_VALUE;
        dnkVar.aa = 0;
        dnkVar.bl = 0.5f;
        dnkVar.bb = 0.5f;
        dnkVar.o = null;
        dnkVar.f14471f = -1.0f;
        dnkVar.bk = -1.0f;
        dnkVar.al = 0;
        dnkVar.af = 0;
        dnkVar.f14472g = 0;
        dnkVar.ad = 0;
        dnkVar.m = 0;
        dnkVar.bc = 0;
        dnkVar.ar = 0;
        dnkVar.l = 0;
        dnkVar.aq = 1.0f;
        dnkVar.be = 1.0f;
        dnkVar.av = -1;
        dnkVar.x = -1;
        dnkVar.q = -1;
        dnkVar.ah = false;
        dnkVar.ae = false;
        dnkVar.bp = null;
        dnkVar.bj = 0;
        dnkVar.ap = true;
        dnkVar.f14466ab = true;
        dnkVar.p = false;
        dnkVar.i = false;
        dnkVar.bd = false;
        dnkVar.bh = -1;
        dnkVar.v = -1;
        dnkVar.f14470e = -1;
        dnkVar.f14467b = -1;
        dnkVar.bg = Integer.MIN_VALUE;
        dnkVar.ak = Integer.MIN_VALUE;
        dnkVar.bi = 0.5f;
        dnkVar.aw = new brh();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bfv.f11480g);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            int i2 = gbx.f17878a.get(index);
            switch (i2) {
                case 1:
                    dnkVar.q = obtainStyledAttributes.getInt(index, dnkVar.q);
                    break;
                case 2:
                    int resourceId = obtainStyledAttributes.getResourceId(index, dnkVar.an);
                    dnkVar.an = resourceId;
                    if (resourceId == -1) {
                        dnkVar.an = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    dnkVar.ay = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.ay);
                    break;
                case 4:
                    float f2 = obtainStyledAttributes.getFloat(index, dnkVar.bo) % 360.0f;
                    dnkVar.bo = f2;
                    if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        dnkVar.bo = (360.0f - f2) % 360.0f;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    dnkVar.y = obtainStyledAttributes.getDimensionPixelOffset(index, dnkVar.y);
                    break;
                case 6:
                    dnkVar.au = obtainStyledAttributes.getDimensionPixelOffset(index, dnkVar.au);
                    break;
                case 7:
                    dnkVar.bf = obtainStyledAttributes.getFloat(index, dnkVar.bf);
                    break;
                case 8:
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, dnkVar.w);
                    dnkVar.w = resourceId2;
                    if (resourceId2 == -1) {
                        dnkVar.w = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    int resourceId3 = obtainStyledAttributes.getResourceId(index, dnkVar.aj);
                    dnkVar.aj = resourceId3;
                    if (resourceId3 == -1) {
                        dnkVar.aj = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    int resourceId4 = obtainStyledAttributes.getResourceId(index, dnkVar.bn);
                    dnkVar.bn = resourceId4;
                    if (resourceId4 == -1) {
                        dnkVar.bn = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    int resourceId5 = obtainStyledAttributes.getResourceId(index, dnkVar.f14468c);
                    dnkVar.f14468c = resourceId5;
                    if (resourceId5 == -1) {
                        dnkVar.f14468c = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    int resourceId6 = obtainStyledAttributes.getResourceId(index, dnkVar.as);
                    dnkVar.as = resourceId6;
                    if (resourceId6 == -1) {
                        dnkVar.as = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    int resourceId7 = obtainStyledAttributes.getResourceId(index, dnkVar.ax);
                    dnkVar.ax = resourceId7;
                    if (resourceId7 == -1) {
                        dnkVar.ax = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    int resourceId8 = obtainStyledAttributes.getResourceId(index, dnkVar.f14469d);
                    dnkVar.f14469d = resourceId8;
                    if (resourceId8 == -1) {
                        dnkVar.f14469d = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    int resourceId9 = obtainStyledAttributes.getResourceId(index, dnkVar.u);
                    dnkVar.u = resourceId9;
                    if (resourceId9 == -1) {
                        dnkVar.u = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    int resourceId10 = obtainStyledAttributes.getResourceId(index, dnkVar.ao);
                    dnkVar.ao = resourceId10;
                    if (resourceId10 == -1) {
                        dnkVar.ao = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    int resourceId11 = obtainStyledAttributes.getResourceId(index, dnkVar.am);
                    dnkVar.am = resourceId11;
                    if (resourceId11 == -1) {
                        dnkVar.am = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 18:
                    int resourceId12 = obtainStyledAttributes.getResourceId(index, dnkVar.ba);
                    dnkVar.ba = resourceId12;
                    if (resourceId12 == -1) {
                        dnkVar.ba = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 19:
                    int resourceId13 = obtainStyledAttributes.getResourceId(index, dnkVar.z);
                    dnkVar.z = resourceId13;
                    if (resourceId13 == -1) {
                        dnkVar.z = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 20:
                    int resourceId14 = obtainStyledAttributes.getResourceId(index, dnkVar.ag);
                    dnkVar.ag = resourceId14;
                    if (resourceId14 == -1) {
                        dnkVar.ag = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 21:
                    dnkVar.ai = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.ai);
                    break;
                case 22:
                    dnkVar.bm = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.bm);
                    break;
                case 23:
                    dnkVar.k = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.k);
                    break;
                case 24:
                    dnkVar.f14465a = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.f14465a);
                    break;
                case 25:
                    dnkVar.az = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.az);
                    break;
                case 26:
                    dnkVar.t = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.t);
                    break;
                case 27:
                    dnkVar.ah = obtainStyledAttributes.getBoolean(index, dnkVar.ah);
                    break;
                case 28:
                    dnkVar.ae = obtainStyledAttributes.getBoolean(index, dnkVar.ae);
                    break;
                case 29:
                    dnkVar.bl = obtainStyledAttributes.getFloat(index, dnkVar.bl);
                    break;
                case 30:
                    dnkVar.bb = obtainStyledAttributes.getFloat(index, dnkVar.bb);
                    break;
                case 31:
                    int i3 = obtainStyledAttributes.getInt(index, 0);
                    dnkVar.f14472g = i3;
                    if (i3 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 32:
                    int i4 = obtainStyledAttributes.getInt(index, 0);
                    dnkVar.ad = i4;
                    if (i4 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 33:
                    try {
                        dnkVar.m = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.m);
                        break;
                    } catch (Exception unused) {
                        if (obtainStyledAttributes.getInt(index, dnkVar.m) == -2) {
                            dnkVar.m = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 34:
                    try {
                        dnkVar.ar = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.ar);
                        break;
                    } catch (Exception unused2) {
                        if (obtainStyledAttributes.getInt(index, dnkVar.ar) == -2) {
                            dnkVar.ar = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 35:
                    dnkVar.aq = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, obtainStyledAttributes.getFloat(index, dnkVar.aq));
                    dnkVar.f14472g = 2;
                    break;
                case 36:
                    try {
                        dnkVar.bc = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.bc);
                        break;
                    } catch (Exception unused3) {
                        if (obtainStyledAttributes.getInt(index, dnkVar.bc) == -2) {
                            dnkVar.bc = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 37:
                    try {
                        dnkVar.l = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.l);
                        break;
                    } catch (Exception unused4) {
                        if (obtainStyledAttributes.getInt(index, dnkVar.l) == -2) {
                            dnkVar.l = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 38:
                    dnkVar.be = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, obtainStyledAttributes.getFloat(index, dnkVar.be));
                    dnkVar.ad = 2;
                    break;
                default:
                    switch (i2) {
                        case 44:
                            ebt.k(dnkVar, obtainStyledAttributes.getString(index));
                            break;
                        case 45:
                            dnkVar.f14471f = obtainStyledAttributes.getFloat(index, dnkVar.f14471f);
                            break;
                        case 46:
                            dnkVar.bk = obtainStyledAttributes.getFloat(index, dnkVar.bk);
                            break;
                        case 47:
                            dnkVar.al = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            dnkVar.af = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            dnkVar.av = obtainStyledAttributes.getDimensionPixelOffset(index, dnkVar.av);
                            break;
                        case 50:
                            dnkVar.x = obtainStyledAttributes.getDimensionPixelOffset(index, dnkVar.x);
                            break;
                        case 51:
                            dnkVar.bp = obtainStyledAttributes.getString(index);
                            break;
                        case 52:
                            int resourceId15 = obtainStyledAttributes.getResourceId(index, dnkVar.r);
                            dnkVar.r = resourceId15;
                            if (resourceId15 == -1) {
                                dnkVar.r = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            int resourceId16 = obtainStyledAttributes.getResourceId(index, dnkVar.j);
                            dnkVar.j = resourceId16;
                            if (resourceId16 == -1) {
                                dnkVar.j = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            dnkVar.aa = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.aa);
                            break;
                        case 55:
                            dnkVar.ac = obtainStyledAttributes.getDimensionPixelSize(index, dnkVar.ac);
                            break;
                        default:
                            switch (i2) {
                                case 64:
                                    ebt.j(dnkVar, obtainStyledAttributes, index, 0);
                                    break;
                                case 65:
                                    ebt.j(dnkVar, obtainStyledAttributes, index, 1);
                                    break;
                                case 66:
                                    dnkVar.bj = obtainStyledAttributes.getInt(index, dnkVar.bj);
                                    break;
                                case 67:
                                    dnkVar.s = obtainStyledAttributes.getBoolean(index, dnkVar.s);
                                    break;
                            }
                    }
            }
        }
        obtainStyledAttributes.recycle();
        dnkVar.bq();
        return dnkVar;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        dnk dnkVar = new dnk(layoutParams);
        dnkVar.y = -1;
        dnkVar.au = -1;
        dnkVar.bf = -1.0f;
        dnkVar.s = true;
        dnkVar.w = -1;
        dnkVar.aj = -1;
        dnkVar.bn = -1;
        dnkVar.f14468c = -1;
        dnkVar.as = -1;
        dnkVar.ax = -1;
        dnkVar.f14469d = -1;
        dnkVar.u = -1;
        dnkVar.ao = -1;
        dnkVar.r = -1;
        dnkVar.j = -1;
        dnkVar.an = -1;
        dnkVar.ay = 0;
        dnkVar.bo = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        dnkVar.am = -1;
        dnkVar.ba = -1;
        dnkVar.z = -1;
        dnkVar.ag = -1;
        dnkVar.ai = Integer.MIN_VALUE;
        dnkVar.bm = Integer.MIN_VALUE;
        dnkVar.k = Integer.MIN_VALUE;
        dnkVar.f14465a = Integer.MIN_VALUE;
        dnkVar.az = Integer.MIN_VALUE;
        dnkVar.t = Integer.MIN_VALUE;
        dnkVar.ac = Integer.MIN_VALUE;
        dnkVar.aa = 0;
        dnkVar.bl = 0.5f;
        dnkVar.bb = 0.5f;
        dnkVar.o = null;
        dnkVar.f14471f = -1.0f;
        dnkVar.bk = -1.0f;
        dnkVar.al = 0;
        dnkVar.af = 0;
        dnkVar.f14472g = 0;
        dnkVar.ad = 0;
        dnkVar.m = 0;
        dnkVar.bc = 0;
        dnkVar.ar = 0;
        dnkVar.l = 0;
        dnkVar.aq = 1.0f;
        dnkVar.be = 1.0f;
        dnkVar.av = -1;
        dnkVar.x = -1;
        dnkVar.q = -1;
        dnkVar.ah = false;
        dnkVar.ae = false;
        dnkVar.bp = null;
        dnkVar.bj = 0;
        dnkVar.ap = true;
        dnkVar.f14466ab = true;
        dnkVar.p = false;
        dnkVar.i = false;
        dnkVar.bd = false;
        dnkVar.bh = -1;
        dnkVar.v = -1;
        dnkVar.f14470e = -1;
        dnkVar.f14467b = -1;
        dnkVar.bg = Integer.MIN_VALUE;
        dnkVar.ak = Integer.MIN_VALUE;
        dnkVar.bi = 0.5f;
        dnkVar.aw = new brh();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ((ViewGroup.MarginLayoutParams) dnkVar).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) dnkVar).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) dnkVar).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) dnkVar).bottomMargin = marginLayoutParams.bottomMargin;
            dnkVar.setMarginStart(marginLayoutParams.getMarginStart());
            dnkVar.setMarginEnd(marginLayoutParams.getMarginEnd());
        }
        if (!(layoutParams instanceof dnk)) {
            return dnkVar;
        }
        dnk dnkVar2 = (dnk) layoutParams;
        dnkVar.y = dnkVar2.y;
        dnkVar.au = dnkVar2.au;
        dnkVar.bf = dnkVar2.bf;
        dnkVar.s = dnkVar2.s;
        dnkVar.w = dnkVar2.w;
        dnkVar.aj = dnkVar2.aj;
        dnkVar.bn = dnkVar2.bn;
        dnkVar.f14468c = dnkVar2.f14468c;
        dnkVar.as = dnkVar2.as;
        dnkVar.ax = dnkVar2.ax;
        dnkVar.f14469d = dnkVar2.f14469d;
        dnkVar.u = dnkVar2.u;
        dnkVar.ao = dnkVar2.ao;
        dnkVar.r = dnkVar2.r;
        dnkVar.j = dnkVar2.j;
        dnkVar.an = dnkVar2.an;
        dnkVar.ay = dnkVar2.ay;
        dnkVar.bo = dnkVar2.bo;
        dnkVar.am = dnkVar2.am;
        dnkVar.ba = dnkVar2.ba;
        dnkVar.z = dnkVar2.z;
        dnkVar.ag = dnkVar2.ag;
        dnkVar.ai = dnkVar2.ai;
        dnkVar.bm = dnkVar2.bm;
        dnkVar.k = dnkVar2.k;
        dnkVar.f14465a = dnkVar2.f14465a;
        dnkVar.az = dnkVar2.az;
        dnkVar.t = dnkVar2.t;
        dnkVar.ac = dnkVar2.ac;
        dnkVar.aa = dnkVar2.aa;
        dnkVar.bl = dnkVar2.bl;
        dnkVar.bb = dnkVar2.bb;
        dnkVar.o = dnkVar2.o;
        dnkVar.f14471f = dnkVar2.f14471f;
        dnkVar.bk = dnkVar2.bk;
        dnkVar.al = dnkVar2.al;
        dnkVar.af = dnkVar2.af;
        dnkVar.ah = dnkVar2.ah;
        dnkVar.ae = dnkVar2.ae;
        dnkVar.f14472g = dnkVar2.f14472g;
        dnkVar.ad = dnkVar2.ad;
        dnkVar.m = dnkVar2.m;
        dnkVar.ar = dnkVar2.ar;
        dnkVar.bc = dnkVar2.bc;
        dnkVar.l = dnkVar2.l;
        dnkVar.aq = dnkVar2.aq;
        dnkVar.be = dnkVar2.be;
        dnkVar.av = dnkVar2.av;
        dnkVar.x = dnkVar2.x;
        dnkVar.q = dnkVar2.q;
        dnkVar.ap = dnkVar2.ap;
        dnkVar.f14466ab = dnkVar2.f14466ab;
        dnkVar.p = dnkVar2.p;
        dnkVar.i = dnkVar2.i;
        dnkVar.bh = dnkVar2.bh;
        dnkVar.v = dnkVar2.v;
        dnkVar.f14470e = dnkVar2.f14470e;
        dnkVar.f14467b = dnkVar2.f14467b;
        dnkVar.bg = dnkVar2.bg;
        dnkVar.ak = dnkVar2.ak;
        dnkVar.bi = dnkVar2.bi;
        dnkVar.bp = dnkVar2.bp;
        dnkVar.bj = dnkVar2.bj;
        dnkVar.aw = dnkVar2.aw;
        return dnkVar;
    }

    public int getMaxHeight() {
        return this.f131c;
    }

    public int getMaxWidth() {
        return this.p;
    }

    public int getMinHeight() {
        return this.j;
    }

    public int getMinWidth() {
        return this.i;
    }

    public int getOptimizationLevel() {
        return this.f134f.w;
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        aep aepVar = this.f134f;
        if (aepVar.cj == null) {
            int id2 = getId();
            if (id2 != -1) {
                aepVar.cj = getContext().getResources().getResourceEntryName(id2);
            } else {
                aepVar.cj = "parent";
            }
        }
        if (aepVar.an == null) {
            aepVar.an = aepVar.cj;
        }
        Iterator it = aepVar.x.iterator();
        while (it.hasNext()) {
            brh brhVar = (brh) it.next();
            View view = brhVar.bh;
            if (view != null) {
                if (brhVar.cj == null && (id = view.getId()) != -1) {
                    brhVar.cj = getContext().getResources().getResourceEntryName(id);
                }
                if (brhVar.an == null) {
                    brhVar.an = brhVar.cj;
                }
            }
        }
        aepVar.ad(sb);
        return sb.toString();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            dnk dnkVar = (dnk) childAt.getLayoutParams();
            brh brhVar = dnkVar.aw;
            if (childAt.getVisibility() != 8 || dnkVar.i || dnkVar.bd || isInEditMode) {
                int ei = brhVar.ei();
                int dy = brhVar.dy();
                childAt.layout(ei, dy, brhVar.eb() + ei, brhVar.di() + dy);
            }
        }
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                ((atw) arrayList.get(i6)).getClass();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        brh brhVar;
        brh brhVar2;
        brh brhVar3;
        brh brhVar4;
        brh brhVar5;
        dnk dnkVar;
        brh brhVar6;
        int i4;
        int i5;
        float parseFloat;
        int i6;
        ArrayList arrayList;
        int i7;
        ArrayList arrayList2;
        int i8;
        String str;
        int n;
        String resourceName;
        int id;
        brh brhVar7;
        ConstraintLayout constraintLayout = this;
        boolean z3 = constraintLayout.f130b;
        constraintLayout.f130b = z3;
        int i9 = 0;
        if (!z3) {
            int childCount = constraintLayout.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    break;
                }
                if (constraintLayout.getChildAt(i10).isLayoutRequested()) {
                    constraintLayout.f130b = true;
                    break;
                }
                i10++;
            }
        }
        boolean z4 = (constraintLayout.getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == constraintLayout.getLayoutDirection();
        aep aepVar = constraintLayout.f134f;
        aepVar.f10109ab = z4;
        if (constraintLayout.f130b) {
            constraintLayout.f130b = false;
            int childCount2 = constraintLayout.getChildCount();
            int i11 = 0;
            while (true) {
                if (i11 >= childCount2) {
                    z = false;
                    break;
                } else {
                    if (constraintLayout.getChildAt(i11).isLayoutRequested()) {
                        z = true;
                        break;
                    }
                    i11++;
                }
            }
            if (z) {
                boolean isInEditMode = constraintLayout.isInEditMode();
                int childCount3 = constraintLayout.getChildCount();
                for (int i12 = 0; i12 < childCount3; i12++) {
                    brh r = constraintLayout.r(constraintLayout.getChildAt(i12));
                    if (r != null) {
                        r.af();
                    }
                }
                Object obj = null;
                if (isInEditMode) {
                    for (int i13 = 0; i13 < childCount3; i13++) {
                        View childAt = constraintLayout.getChildAt(i13);
                        try {
                            resourceName = constraintLayout.getResources().getResourceName(childAt.getId());
                            Integer valueOf = Integer.valueOf(childAt.getId());
                            if (resourceName != null) {
                                if (constraintLayout.o == null) {
                                    constraintLayout.o = new HashMap();
                                }
                                int indexOf = resourceName.indexOf("/");
                                try {
                                    constraintLayout.o.put(indexOf != -1 ? resourceName.substring(indexOf + 1) : resourceName, valueOf);
                                } catch (Resources.NotFoundException unused) {
                                }
                            }
                            int indexOf2 = resourceName.indexOf(47);
                            if (indexOf2 != -1) {
                                resourceName = resourceName.substring(indexOf2 + 1);
                            }
                            id = childAt.getId();
                        } catch (Resources.NotFoundException unused2) {
                        }
                        if (id != 0) {
                            View view = (View) constraintLayout.k.get(id);
                            if (view == null && (view = constraintLayout.findViewById(id)) != null && view != constraintLayout && view.getParent() == constraintLayout) {
                                constraintLayout.onViewAdded(view);
                            }
                            if (view != constraintLayout) {
                                brhVar7 = view == null ? null : ((dnk) view.getLayoutParams()).aw;
                                brhVar7.an = resourceName;
                            }
                        }
                        brhVar7 = aepVar;
                        brhVar7.an = resourceName;
                    }
                }
                if (constraintLayout.f135g != -1) {
                    for (int i14 = 0; i14 < childCount3; i14++) {
                        constraintLayout.getChildAt(i14).getId();
                    }
                }
                ebt ebtVar = constraintLayout.f133e;
                if (ebtVar != null) {
                    ebtVar.m(constraintLayout);
                }
                aepVar.x.clear();
                ArrayList arrayList3 = constraintLayout.m;
                int size = arrayList3.size();
                if (size > 0) {
                    int i15 = 0;
                    while (i15 < size) {
                        atw atwVar = (atw) arrayList3.get(i15);
                        HashMap hashMap = atwVar.f10835d;
                        if (atwVar.isInEditMode()) {
                            atwVar.setIds(atwVar.f10838g);
                        }
                        gbi gbiVar = atwVar.f10837f;
                        if (gbiVar == null) {
                            arrayList = arrayList3;
                            i7 = size;
                        } else {
                            gbiVar.ev = i9;
                            Arrays.fill(gbiVar.ew, obj);
                            int i16 = 0;
                            while (i16 < atwVar.i) {
                                int i17 = atwVar.h[i16];
                                View view2 = (View) constraintLayout.k.get(i17);
                                if (view2 == null && (n = atwVar.n(constraintLayout, (str = (String) hashMap.get(Integer.valueOf(i17))))) != 0) {
                                    atwVar.h[i16] = n;
                                    hashMap.put(Integer.valueOf(n), str);
                                    view2 = (View) constraintLayout.k.get(n);
                                }
                                if (view2 != null) {
                                    gbi gbiVar2 = atwVar.f10837f;
                                    brh r2 = constraintLayout.r(view2);
                                    gbiVar2.getClass();
                                    if (r2 != gbiVar2 && r2 != null) {
                                        int i18 = gbiVar2.ev + 1;
                                        arrayList2 = arrayList3;
                                        brh[] brhVarArr = gbiVar2.ew;
                                        i8 = size;
                                        if (i18 > brhVarArr.length) {
                                            gbiVar2.ew = (brh[]) Arrays.copyOf(brhVarArr, brhVarArr.length * 2);
                                        }
                                        brh[] brhVarArr2 = gbiVar2.ew;
                                        int i19 = gbiVar2.ev;
                                        brhVarArr2[i19] = r2;
                                        gbiVar2.ev = i19 + 1;
                                        i16++;
                                        arrayList3 = arrayList2;
                                        size = i8;
                                    }
                                }
                                arrayList2 = arrayList3;
                                i8 = size;
                                i16++;
                                arrayList3 = arrayList2;
                                size = i8;
                            }
                            arrayList = arrayList3;
                            i7 = size;
                            atwVar.f10837f.eu();
                        }
                        i15++;
                        arrayList3 = arrayList;
                        size = i7;
                        obj = null;
                        i9 = 0;
                    }
                }
                for (int i20 = 0; i20 < childCount3; i20++) {
                    constraintLayout.getChildAt(i20);
                }
                SparseArray sparseArray = constraintLayout.n;
                sparseArray.clear();
                sparseArray.put(0, aepVar);
                sparseArray.put(constraintLayout.getId(), aepVar);
                for (int i21 = 0; i21 < childCount3; i21++) {
                    View childAt2 = constraintLayout.getChildAt(i21);
                    sparseArray.put(childAt2.getId(), constraintLayout.r(childAt2));
                }
                int i22 = 0;
                while (i22 < childCount3) {
                    View childAt3 = constraintLayout.getChildAt(i22);
                    brh r3 = constraintLayout.r(childAt3);
                    if (r3 != null) {
                        dnk dnkVar2 = (dnk) childAt3.getLayoutParams();
                        aepVar.x.add(r3);
                        brh brhVar8 = r3.bj;
                        if (brhVar8 != null) {
                            ((aep) brhVar8).x.remove(r3);
                            r3.af();
                        }
                        r3.bj = aepVar;
                        dnkVar2.bq();
                        r3.aq = childAt3.getVisibility();
                        r3.bh = childAt3;
                        if (childAt3 instanceof atw) {
                            ((atw) childAt3).b(r3, aepVar.f10109ab);
                        }
                        if (dnkVar2.i) {
                            aar aarVar = (aar) r3;
                            int i23 = dnkVar2.h;
                            int i24 = dnkVar2.at;
                            float f2 = dnkVar2.n;
                            if (f2 != -1.0f) {
                                if (f2 > -1.0f) {
                                    aarVar.f9877d = f2;
                                    aarVar.f9874a = -1;
                                    aarVar.f9876c = -1;
                                }
                            } else if (i23 != -1) {
                                if (i23 > -1) {
                                    aarVar.f9877d = -1.0f;
                                    aarVar.f9874a = i23;
                                    aarVar.f9876c = -1;
                                }
                            } else if (i24 != -1 && i24 > -1) {
                                aarVar.f9877d = -1.0f;
                                aarVar.f9874a = -1;
                                aarVar.f9876c = i24;
                            }
                        } else {
                            int i25 = dnkVar2.bh;
                            int i26 = dnkVar2.v;
                            int i27 = dnkVar2.f14470e;
                            int i28 = dnkVar2.f14467b;
                            int i29 = dnkVar2.bg;
                            int i30 = dnkVar2.ak;
                            i3 = i22;
                            float f3 = dnkVar2.bi;
                            int i31 = dnkVar2.an;
                            z2 = z;
                            if (i31 != -1) {
                                brh brhVar9 = (brh) sparseArray.get(i31);
                                if (brhVar9 != null) {
                                    float f4 = dnkVar2.bo;
                                    int i32 = dnkVar2.ay;
                                    dih dihVar = dih.CENTER;
                                    r3.du(dihVar, brhVar9, dihVar, i32, 0);
                                    r3.bm = f4;
                                }
                                constraintLayout = this;
                                brhVar6 = r3;
                                dnkVar = dnkVar2;
                            } else {
                                if (i25 != -1) {
                                    brh brhVar10 = (brh) sparseArray.get(i25);
                                    if (brhVar10 != null) {
                                        dih dihVar2 = dih.LEFT;
                                        brhVar = r3;
                                        brhVar.du(dihVar2, brhVar10, dihVar2, ((ViewGroup.MarginLayoutParams) dnkVar2).leftMargin, i29);
                                    } else {
                                        brhVar = r3;
                                    }
                                } else {
                                    brhVar = r3;
                                    if (i26 != -1 && (brhVar2 = (brh) sparseArray.get(i26)) != null) {
                                        brhVar.du(dih.LEFT, brhVar2, dih.RIGHT, ((ViewGroup.MarginLayoutParams) dnkVar2).leftMargin, i29);
                                    }
                                }
                                if (i27 != -1) {
                                    brh brhVar11 = (brh) sparseArray.get(i27);
                                    if (brhVar11 != null) {
                                        brhVar.du(dih.RIGHT, brhVar11, dih.LEFT, ((ViewGroup.MarginLayoutParams) dnkVar2).rightMargin, i30);
                                    }
                                } else if (i28 != -1 && (brhVar3 = (brh) sparseArray.get(i28)) != null) {
                                    dih dihVar3 = dih.RIGHT;
                                    brhVar.du(dihVar3, brhVar3, dihVar3, ((ViewGroup.MarginLayoutParams) dnkVar2).rightMargin, i30);
                                }
                                int i33 = dnkVar2.as;
                                if (i33 != -1) {
                                    brh brhVar12 = (brh) sparseArray.get(i33);
                                    if (brhVar12 != null) {
                                        dih dihVar4 = dih.TOP;
                                        brhVar.du(dihVar4, brhVar12, dihVar4, ((ViewGroup.MarginLayoutParams) dnkVar2).topMargin, dnkVar2.bm);
                                    }
                                } else {
                                    int i34 = dnkVar2.ax;
                                    if (i34 != -1 && (brhVar4 = (brh) sparseArray.get(i34)) != null) {
                                        brhVar.du(dih.TOP, brhVar4, dih.BOTTOM, ((ViewGroup.MarginLayoutParams) dnkVar2).topMargin, dnkVar2.bm);
                                    }
                                }
                                int i35 = dnkVar2.f14469d;
                                if (i35 != -1) {
                                    brh brhVar13 = (brh) sparseArray.get(i35);
                                    if (brhVar13 != null) {
                                        brhVar.du(dih.BOTTOM, brhVar13, dih.TOP, ((ViewGroup.MarginLayoutParams) dnkVar2).bottomMargin, dnkVar2.f14465a);
                                    }
                                } else {
                                    int i36 = dnkVar2.u;
                                    if (i36 != -1 && (brhVar5 = (brh) sparseArray.get(i36)) != null) {
                                        dih dihVar5 = dih.BOTTOM;
                                        brhVar.du(dihVar5, brhVar5, dihVar5, ((ViewGroup.MarginLayoutParams) dnkVar2).bottomMargin, dnkVar2.f14465a);
                                    }
                                }
                                dnkVar = dnkVar2;
                                int i37 = dnkVar.ao;
                                if (i37 != -1) {
                                    constraintLayout = this;
                                    brhVar6 = brhVar;
                                    constraintLayout.t(brhVar6, dnkVar, sparseArray, i37, dih.BASELINE);
                                } else {
                                    int i38 = dnkVar.r;
                                    if (i38 != -1) {
                                        constraintLayout = this;
                                        brhVar6 = brhVar;
                                        constraintLayout.t(brhVar6, dnkVar, sparseArray, i38, dih.TOP);
                                    } else {
                                        int i39 = dnkVar.j;
                                        if (i39 != -1) {
                                            constraintLayout = this;
                                            brhVar6 = brhVar;
                                            constraintLayout.t(brhVar6, dnkVar, sparseArray, i39, dih.BOTTOM);
                                        } else {
                                            constraintLayout = this;
                                            brhVar6 = brhVar;
                                        }
                                    }
                                }
                                if (f3 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                    brhVar6.cp = f3;
                                }
                                float f5 = dnkVar.bb;
                                if (f5 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                    brhVar6.ct = f5;
                                }
                            }
                            if (isInEditMode && ((i6 = dnkVar.av) != -1 || dnkVar.x != -1)) {
                                int i40 = dnkVar.x;
                                brhVar6.cv = i6;
                                brhVar6.cb = i40;
                            }
                            if (dnkVar.ap) {
                                brhVar6.ds(fol.FIXED);
                                brhVar6.ed(((ViewGroup.MarginLayoutParams) dnkVar).width);
                                if (((ViewGroup.MarginLayoutParams) dnkVar).width == -2) {
                                    brhVar6.ds(fol.WRAP_CONTENT);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) dnkVar).width == -1) {
                                if (dnkVar.ah) {
                                    brhVar6.ds(fol.MATCH_CONSTRAINT);
                                } else {
                                    brhVar6.ds(fol.MATCH_PARENT);
                                }
                                brhVar6.m(dih.LEFT).i = ((ViewGroup.MarginLayoutParams) dnkVar).leftMargin;
                                brhVar6.m(dih.RIGHT).i = ((ViewGroup.MarginLayoutParams) dnkVar).rightMargin;
                            } else {
                                brhVar6.ds(fol.MATCH_CONSTRAINT);
                                brhVar6.ed(0);
                            }
                            if (dnkVar.f14466ab) {
                                brhVar6.dl(fol.FIXED);
                                brhVar6.dj(((ViewGroup.MarginLayoutParams) dnkVar).height);
                                if (((ViewGroup.MarginLayoutParams) dnkVar).height == -2) {
                                    brhVar6.dl(fol.WRAP_CONTENT);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) dnkVar).height == -1) {
                                if (dnkVar.ae) {
                                    brhVar6.dl(fol.MATCH_CONSTRAINT);
                                } else {
                                    brhVar6.dl(fol.MATCH_PARENT);
                                }
                                brhVar6.m(dih.TOP).i = ((ViewGroup.MarginLayoutParams) dnkVar).topMargin;
                                brhVar6.m(dih.BOTTOM).i = ((ViewGroup.MarginLayoutParams) dnkVar).bottomMargin;
                            } else {
                                brhVar6.dl(fol.MATCH_CONSTRAINT);
                                brhVar6.dj(0);
                            }
                            String str2 = dnkVar.o;
                            if (str2 == null || str2.length() == 0) {
                                brhVar6.bq = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            } else {
                                int length = str2.length();
                                int indexOf3 = str2.indexOf(44);
                                if (indexOf3 <= 0 || indexOf3 >= length - 1) {
                                    i4 = 0;
                                    i5 = -1;
                                } else {
                                    String substring = str2.substring(0, indexOf3);
                                    i5 = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
                                    i4 = indexOf3 + 1;
                                }
                                int indexOf4 = str2.indexOf(58);
                                if (indexOf4 < 0 || indexOf4 >= length - 1) {
                                    String substring2 = str2.substring(i4);
                                    if (substring2.length() > 0) {
                                        parseFloat = Float.parseFloat(substring2);
                                    }
                                    parseFloat = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                } else {
                                    String substring3 = str2.substring(i4, indexOf4);
                                    String substring4 = str2.substring(indexOf4 + 1);
                                    if (substring3.length() > 0 && substring4.length() > 0) {
                                        try {
                                            float parseFloat2 = Float.parseFloat(substring3);
                                            float parseFloat3 = Float.parseFloat(substring4);
                                            if (parseFloat2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && parseFloat3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                                parseFloat = i5 == 1 ? Math.abs(parseFloat3 / parseFloat2) : Math.abs(parseFloat2 / parseFloat3);
                                            }
                                        } catch (NumberFormatException unused3) {
                                        }
                                    }
                                    parseFloat = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                }
                                if (parseFloat > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                    brhVar6.bq = parseFloat;
                                    brhVar6.db = i5;
                                }
                            }
                            float f6 = dnkVar.f14471f;
                            float[] fArr = brhVar6.cu;
                            fArr[0] = f6;
                            fArr[1] = dnkVar.bk;
                            brhVar6.cs = dnkVar.al;
                            brhVar6.bw = dnkVar.af;
                            int i41 = dnkVar.bj;
                            if (i41 >= 0 && i41 <= 3) {
                                brhVar6.ck = i41;
                            }
                            int i42 = dnkVar.f14472g;
                            int i43 = dnkVar.m;
                            int i44 = dnkVar.ar;
                            float f7 = dnkVar.aq;
                            brhVar6.da = i42;
                            brhVar6.bl = i43;
                            if (i44 == Integer.MAX_VALUE) {
                                i44 = 0;
                            }
                            brhVar6.bs = i44;
                            brhVar6.bu = f7;
                            if (f7 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f7 < 1.0f && i42 == 0) {
                                brhVar6.da = 2;
                            }
                            int i45 = dnkVar.ad;
                            int i46 = dnkVar.bc;
                            int i47 = dnkVar.l;
                            float f8 = dnkVar.be;
                            brhVar6.by = i45;
                            brhVar6.cy = i46;
                            if (i47 == Integer.MAX_VALUE) {
                                i47 = 0;
                            }
                            brhVar6.aw = i47;
                            brhVar6.am = f8;
                            if (f8 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f8 < 1.0f && i45 == 0) {
                                brhVar6.by = 2;
                            }
                            i22 = i3 + 1;
                            z = z2;
                        }
                    }
                    i3 = i22;
                    z2 = z;
                    i22 = i3 + 1;
                    z = z2;
                }
            }
            if (z) {
                aepVar.f10110b.ac(aepVar);
            }
        }
        aepVar.s.getClass();
        constraintLayout.s(aepVar, constraintLayout.l, i, i2);
        int eb = aepVar.eb();
        int di = aepVar.di();
        boolean z5 = aepVar.l;
        boolean z6 = aepVar.r;
        gri griVar = constraintLayout.f132d;
        int i48 = griVar.f18640c;
        int resolveSizeAndState = View.resolveSizeAndState(eb + griVar.f18639b, i, 0);
        int resolveSizeAndState2 = View.resolveSizeAndState(di + i48, i2, 0) & 16777215;
        int min = Math.min(constraintLayout.p, resolveSizeAndState & 16777215);
        int min2 = Math.min(constraintLayout.f131c, resolveSizeAndState2);
        if (z5) {
            min |= 16777216;
        }
        if (z6) {
            min2 |= 16777216;
        }
        constraintLayout.setMeasuredDimension(min, min2);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        brh r = r(view);
        if ((view instanceof dqd) && !(r instanceof aar)) {
            dnk dnkVar = (dnk) view.getLayoutParams();
            aar aarVar = new aar();
            dnkVar.aw = aarVar;
            dnkVar.i = true;
            aarVar.n(dnkVar.q);
        }
        if (view instanceof atw) {
            atw atwVar = (atw) view;
            atwVar.o();
            ((dnk) view.getLayoutParams()).bd = true;
            ArrayList arrayList = this.m;
            if (!arrayList.contains(atwVar)) {
                arrayList.add(atwVar);
            }
        }
        this.k.put(view.getId(), view);
        this.f130b = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.k.remove(view.getId());
        brh r = r(view);
        this.f134f.x.remove(r);
        r.af();
        this.m.remove(view);
        this.f130b = true;
    }

    public final brh r(View view) {
        if (view == this) {
            return this.f134f;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof dnk) {
            return ((dnk) view.getLayoutParams()).aw;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof dnk) {
            return ((dnk) view.getLayoutParams()).aw;
        }
        return null;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f130b = true;
        super.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0535  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01e2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void s(aep aepVar, int i, int i2, int i3) {
        fol folVar;
        fol folVar2;
        int i4;
        int i5;
        int max;
        int max2;
        int eb;
        ar arVar;
        int i6;
        int i7;
        dzh dzhVar;
        ArrayList arrayList;
        boolean z;
        int i8;
        boolean z2;
        boolean z3;
        boolean z4;
        gri griVar;
        boolean z5;
        int i9;
        int size;
        int i10;
        ArrayList arrayList2;
        gri griVar2;
        boolean z6;
        boolean z7;
        boolean z8;
        gri griVar3;
        int i11;
        dza dzaVar;
        fju fjuVar;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z9;
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size3 = View.MeasureSpec.getSize(i3);
        int max3 = Math.max(0, getPaddingTop());
        int max4 = Math.max(0, getPaddingBottom());
        int i16 = max3 + max4;
        int paddingWidth = getPaddingWidth();
        gri griVar4 = this.f132d;
        griVar4.f18643f = max3;
        griVar4.f18644g = max4;
        griVar4.f18639b = paddingWidth;
        griVar4.f18640c = i16;
        griVar4.f18642e = i2;
        griVar4.h = i3;
        int max5 = Math.max(0, getPaddingStart());
        int max6 = Math.max(0, getPaddingEnd());
        if (max5 <= 0 && max6 <= 0) {
            max5 = Math.max(0, getPaddingLeft());
        } else if ((getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection()) {
            max5 = max6;
        }
        int i17 = size2 - paddingWidth;
        int i18 = size3 - i16;
        int i19 = griVar4.f18640c;
        int i20 = griVar4.f18639b;
        fol folVar3 = fol.FIXED;
        int childCount = getChildCount();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                folVar = fol.WRAP_CONTENT;
                if (childCount == 0) {
                    max = Math.max(0, this.i);
                    fol folVar4 = folVar;
                    i5 = max;
                    folVar2 = folVar4;
                } else {
                    folVar2 = folVar;
                }
            } else if (mode != 1073741824) {
                folVar2 = folVar3;
            } else {
                i5 = Math.min(this.p - i20, i17);
                folVar2 = folVar3;
            }
            i4 = Integer.MIN_VALUE;
            i5 = 0;
            if (mode2 == i4) {
                folVar3 = fol.WRAP_CONTENT;
                max2 = childCount == 0 ? Math.max(0, this.j) : i18;
            } else if (mode2 != 0) {
                if (mode2 == 1073741824) {
                    max2 = Math.min(this.f131c - i19, i18);
                }
                max2 = 0;
            } else {
                folVar3 = fol.WRAP_CONTENT;
                if (childCount == 0) {
                    max2 = Math.max(0, this.j);
                }
                max2 = 0;
            }
            eb = aepVar.eb();
            int[] iArr = aepVar.bo;
            arVar = aepVar.v;
            if (i5 == eb || max2 != aepVar.di()) {
                arVar.f10694g = true;
            }
            aepVar.cv = 0;
            aepVar.cb = 0;
            iArr[0] = this.p - i20;
            iArr[1] = this.f131c - i19;
            aepVar.bb = 0;
            aepVar.au = 0;
            aepVar.ds(folVar2);
            aepVar.ed(i5);
            aepVar.dl(folVar3);
            aepVar.dj(max2);
            i6 = this.i - i20;
            if (i6 < 0) {
                aepVar.bb = 0;
            } else {
                aepVar.bb = i6;
            }
            i7 = this.j - i19;
            if (i7 < 0) {
                aepVar.au = 0;
            } else {
                aepVar.au = i7;
            }
            aepVar.z = max5;
            aepVar.o = max3;
            dzhVar = aepVar.f10110b;
            aep aepVar2 = (aep) dzhVar.f15122g;
            arrayList = (ArrayList) dzhVar.i;
            gri griVar5 = aepVar.y;
            int size4 = aepVar.x.size();
            int eb2 = aepVar.eb();
            int di = aepVar.di();
            boolean x = bff.x(i, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            z = !x || bff.x(i, 64);
            if (z) {
                int i21 = 0;
                while (i21 < size4) {
                    boolean z10 = z;
                    brh brhVar = (brh) aepVar.x.get(i21);
                    int i22 = i21;
                    fol[] folVarArr = brhVar.ch;
                    fol folVar5 = folVarArr[0];
                    i8 = size4;
                    fol folVar6 = fol.MATCH_CONSTRAINT;
                    boolean z11 = (folVar5 == folVar6) && (folVarArr[1] == folVar6) && brhVar.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    if ((brhVar.eg() && z11) || ((brhVar.dk() && z11) || (brhVar instanceof dbr) || brhVar.eg() || brhVar.dk())) {
                        z2 = false;
                        break;
                    } else {
                        i21 = i22 + 1;
                        z = z10;
                        size4 = i8;
                    }
                }
            }
            i8 = size4;
            z2 = z;
            z3 = z2 & ((mode != 1073741824 && mode2 == 1073741824) || x);
            if (z3) {
                int min = Math.min(iArr[0], i17);
                int min2 = Math.min(iArr[1], i18);
                int i23 = C.ENCODING_PCM_32BIT;
                if (mode == 1073741824) {
                    if (aepVar.eb() != min) {
                        aepVar.ed(min);
                        aepVar.v.f10693f = true;
                    }
                    i23 = C.ENCODING_PCM_32BIT;
                }
                if (mode2 == i23 && aepVar.di() != min2) {
                    aepVar.dj(min2);
                    aepVar.v.f10693f = true;
                }
                if (mode == i23 && mode2 == i23) {
                    ArrayList arrayList3 = arVar.f10690c;
                    aep aepVar3 = arVar.f10691d;
                    if (arVar.f10693f || arVar.f10694g) {
                        Iterator it = aepVar3.x.iterator();
                        while (it.hasNext()) {
                            brh brhVar2 = (brh) it.next();
                            brhVar2.dh();
                            brhVar2.bk = false;
                            brhVar2.be.y();
                            brhVar2.bi.y();
                            z3 = z3;
                        }
                        z4 = z3;
                        aepVar3.dh();
                        i14 = 0;
                        aepVar3.bk = false;
                        aepVar3.be.y();
                        aepVar3.bi.y();
                        arVar.f10694g = false;
                    } else {
                        z4 = z3;
                        i14 = 0;
                    }
                    arVar.m(arVar.f10689b);
                    aepVar3.cv = i14;
                    fol[] folVarArr2 = aepVar3.ch;
                    aepVar3.cb = i14;
                    fol ea = aepVar3.ea(i14);
                    fol ea2 = aepVar3.ea(1);
                    if (arVar.f10693f) {
                        arVar.n();
                    }
                    int ei = aepVar3.ei();
                    int dy = aepVar3.dy();
                    griVar = griVar5;
                    aepVar3.be.f19645a.m(ei);
                    aepVar3.bi.f19645a.m(dy);
                    arVar.o();
                    fol folVar7 = fol.WRAP_CONTENT;
                    if (ea == folVar7 || ea2 == folVar7) {
                        if (x) {
                            Iterator it2 = arrayList3.iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    if (!((mi) it2.next()).n()) {
                                        x = false;
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            }
                        }
                        if (x && ea == fol.WRAP_CONTENT) {
                            aepVar3.ds(fol.FIXED);
                            i15 = ei;
                            aepVar3.ed(arVar.i(aepVar3, 0));
                            aepVar3.be.f19647c.m(aepVar3.eb());
                        } else {
                            i15 = ei;
                        }
                        if (x && ea2 == fol.WRAP_CONTENT) {
                            aepVar3.dl(fol.FIXED);
                            aepVar3.dj(arVar.i(aepVar3, 1));
                            aepVar3.bi.f19647c.m(aepVar3.di());
                        }
                    } else {
                        i15 = ei;
                    }
                    fol folVar8 = folVarArr2[0];
                    fol folVar9 = fol.FIXED;
                    if (folVar8 == folVar9 || folVar8 == fol.MATCH_PARENT) {
                        int eb3 = aepVar3.eb() + i15;
                        aepVar3.be.f19650f.m(eb3);
                        aepVar3.be.f19647c.m(eb3 - i15);
                        arVar.o();
                        fol folVar10 = folVarArr2[1];
                        if (folVar10 == folVar9 || folVar10 == fol.MATCH_PARENT) {
                            int di2 = aepVar3.di() + dy;
                            aepVar3.bi.f19650f.m(di2);
                            aepVar3.bi.f19647c.m(di2 - dy);
                        }
                        arVar.o();
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        mi miVar = (mi) it3.next();
                        if (miVar.f19651g != aepVar3 || miVar.j) {
                            miVar.q();
                        }
                    }
                    Iterator it4 = arrayList3.iterator();
                    while (it4.hasNext()) {
                        mi miVar2 = (mi) it4.next();
                        if (z9 || miVar2.f19651g != aepVar3) {
                            if (!miVar2.f19645a.j || ((!miVar2.f19650f.j && !(miVar2 instanceof cnr)) || (!miVar2.f19647c.j && !(miVar2 instanceof gnk) && !(miVar2 instanceof cnr)))) {
                                z5 = false;
                                break;
                            }
                        }
                    }
                    z5 = true;
                    aepVar3.ds(ea);
                    aepVar3.dl(ea2);
                    i9 = 2;
                    i13 = C.ENCODING_PCM_32BIT;
                } else {
                    z4 = z3;
                    griVar = griVar5;
                    aep aepVar4 = arVar.f10691d;
                    if (arVar.f10693f) {
                        Iterator it5 = aepVar4.x.iterator();
                        while (it5.hasNext()) {
                            brh brhVar3 = (brh) it5.next();
                            brhVar3.dh();
                            brhVar3.bk = false;
                            dza dzaVar2 = brhVar3.be;
                            dzaVar2.f19647c.j = false;
                            dzaVar2.j = false;
                            dzaVar2.y();
                            fju fjuVar2 = brhVar3.bi;
                            fjuVar2.f19647c.j = false;
                            fjuVar2.j = false;
                            fjuVar2.y();
                        }
                        i12 = 0;
                        aepVar4.dh();
                        aepVar4.bk = false;
                        dza dzaVar3 = aepVar4.be;
                        dzaVar3.f19647c.j = false;
                        dzaVar3.j = false;
                        dzaVar3.y();
                        fju fjuVar3 = aepVar4.bi;
                        fjuVar3.f19647c.j = false;
                        fjuVar3.j = false;
                        fjuVar3.y();
                        arVar.n();
                    } else {
                        i12 = 0;
                    }
                    arVar.m(arVar.f10689b);
                    aepVar4.cv = i12;
                    aepVar4.cb = i12;
                    aepVar4.be.f19645a.m(i12);
                    aepVar4.bi.f19645a.m(i12);
                    i13 = C.ENCODING_PCM_32BIT;
                    if (mode == 1073741824) {
                        z5 = aepVar.aj(i12, x);
                        i9 = 1;
                    } else {
                        z5 = true;
                        i9 = 0;
                    }
                    if (mode2 == 1073741824) {
                        z5 &= aepVar.aj(1, x);
                        i9++;
                    }
                }
                if (z5) {
                    aepVar.ai(mode == i13, mode2 == i13);
                }
            } else {
                z4 = z3;
                griVar = griVar5;
                z5 = false;
                i9 = 0;
            }
            if (z5 || i9 != 2) {
                int i24 = aepVar.w;
                if (i8 > 0) {
                    int size5 = aepVar.x.size();
                    boolean ag = aepVar.ag(64);
                    gri griVar6 = aepVar.y;
                    int i25 = 0;
                    while (i25 < size5) {
                        brh brhVar4 = (brh) aepVar.x.get(i25);
                        if ((brhVar4 instanceof aar) || (brhVar4 instanceof r) || brhVar4.f12070cn || (ag && (dzaVar = brhVar4.be) != null && (fjuVar = brhVar4.bi) != null && dzaVar.f19647c.j && fjuVar.f19647c.j)) {
                            i11 = size5;
                        } else {
                            fol ea3 = brhVar4.ea(0);
                            fol ea4 = brhVar4.ea(1);
                            fol folVar11 = fol.MATCH_CONSTRAINT;
                            i11 = size5;
                            boolean z12 = ea3 == folVar11 && brhVar4.da != 1 && ea4 == folVar11 && brhVar4.by != 1;
                            if (!z12 && aepVar.ag(1) && !(brhVar4 instanceof dbr)) {
                                if (ea3 == folVar11 && brhVar4.da == 0 && ea4 != folVar11 && !brhVar4.eg()) {
                                    z12 = true;
                                }
                                if (ea4 == folVar11 && brhVar4.by == 0 && ea3 != folVar11 && !brhVar4.eg()) {
                                    z12 = true;
                                }
                                if ((ea3 == folVar11 || ea4 == folVar11) && brhVar4.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                    z12 = true;
                                }
                            }
                            if (!z12) {
                                dzhVar.y(0, griVar6, brhVar4);
                            }
                        }
                        i25++;
                        size5 = i11;
                    }
                    ConstraintLayout constraintLayout = griVar6.f18641d;
                    int childCount2 = constraintLayout.getChildCount();
                    ArrayList arrayList4 = constraintLayout.m;
                    for (int i26 = 0; i26 < childCount2; i26++) {
                        constraintLayout.getChildAt(i26);
                    }
                    int size6 = arrayList4.size();
                    if (size6 > 0) {
                        for (int i27 = 0; i27 < size6; i27++) {
                            ((atw) arrayList4.get(i27)).getClass();
                        }
                    }
                }
                dzhVar.ac(aepVar);
                size = arrayList.size();
                if (i8 > 0) {
                    dzhVar.m(aepVar, 0, eb2, di);
                }
                if (size > 0) {
                    fol[] folVarArr3 = aepVar.ch;
                    fol folVar12 = folVarArr3[0];
                    fol folVar13 = fol.WRAP_CONTENT;
                    boolean z13 = folVar12 == folVar13;
                    boolean z14 = folVarArr3[1] == folVar13;
                    int max7 = Math.max(aepVar.eb(), aepVar2.bb);
                    int max8 = Math.max(aepVar.di(), aepVar2.au);
                    int i28 = 0;
                    boolean z15 = false;
                    while (i28 < size) {
                        brh brhVar5 = (brh) arrayList.get(i28);
                        if (brhVar5 instanceof dbr) {
                            int eb4 = brhVar5.eb();
                            int di3 = brhVar5.di();
                            z7 = z14;
                            z8 = z13;
                            griVar3 = griVar;
                            boolean y = z15 | dzhVar.y(1, griVar3, brhVar5);
                            int eb5 = brhVar5.eb();
                            boolean z16 = y;
                            int di4 = brhVar5.di();
                            if (eb5 != eb4) {
                                brhVar5.ed(eb5);
                                if (z8 && brhVar5.ei() + brhVar5.bc > max7) {
                                    max7 = Math.max(max7, brhVar5.m(dih.RIGHT).n() + brhVar5.ei() + brhVar5.bc);
                                }
                                z16 = true;
                            }
                            if (di4 != di3) {
                                brhVar5.dj(di4);
                                if (z7 && brhVar5.dy() + brhVar5.bt > max8) {
                                    max8 = Math.max(max8, brhVar5.m(dih.BOTTOM).n() + brhVar5.dy() + brhVar5.bt);
                                }
                                z16 = true;
                            }
                            z15 = z16 | ((dbr) brhVar5).u;
                        } else {
                            z7 = z14;
                            z8 = z13;
                            griVar3 = griVar;
                        }
                        i28++;
                        griVar = griVar3;
                        z13 = z8;
                        z14 = z7;
                    }
                    boolean z17 = z14;
                    boolean z18 = z13;
                    int i29 = 0;
                    while (true) {
                        gri griVar7 = griVar;
                        if (i29 >= 2) {
                            break;
                        }
                        int i30 = 0;
                        while (i30 < size) {
                            brh brhVar6 = (brh) arrayList.get(i30);
                            if (((brhVar6 instanceof gbi) && !(brhVar6 instanceof dbr)) || (brhVar6 instanceof aar) || brhVar6.aq == 8 || ((z4 && brhVar6.be.f19647c.j && brhVar6.bi.f19647c.j) || (brhVar6 instanceof dbr))) {
                                i10 = size;
                                griVar2 = griVar7;
                                arrayList2 = arrayList;
                            } else {
                                int eb6 = brhVar6.eb();
                                int di5 = brhVar6.di();
                                i10 = size;
                                int i31 = brhVar6.bn;
                                arrayList2 = arrayList;
                                boolean y2 = dzhVar.y(i29 == 1 ? 2 : 1, griVar7, brhVar6) | z15;
                                int eb7 = brhVar6.eb();
                                griVar2 = griVar7;
                                int di6 = brhVar6.di();
                                if (eb7 != eb6) {
                                    brhVar6.ed(eb7);
                                    if (z18 && brhVar6.ei() + brhVar6.bc > max7) {
                                        max7 = Math.max(max7, brhVar6.m(dih.RIGHT).n() + brhVar6.ei() + brhVar6.bc);
                                    }
                                    z6 = true;
                                } else {
                                    z6 = y2;
                                }
                                if (di6 != di5) {
                                    brhVar6.dj(di6);
                                    if (z17 && brhVar6.dy() + brhVar6.bt > max8) {
                                        max8 = Math.max(max8, brhVar6.m(dih.BOTTOM).n() + brhVar6.dy() + brhVar6.bt);
                                    }
                                    z6 = true;
                                }
                                z15 = (!brhVar6.cx || i31 == brhVar6.bn) ? z6 : true;
                            }
                            i30++;
                            size = i10;
                            arrayList = arrayList2;
                            griVar7 = griVar2;
                        }
                        int i32 = size;
                        griVar = griVar7;
                        ArrayList arrayList5 = arrayList;
                        if (!z15) {
                            break;
                        }
                        i29++;
                        dzhVar.m(aepVar, i29, eb2, di);
                        size = i32;
                        arrayList = arrayList5;
                        z15 = false;
                    }
                }
                aepVar.w = i24;
                bwo.f12323a = aepVar.ag(512);
            }
            return;
        }
        folVar = fol.WRAP_CONTENT;
        if (childCount != 0) {
            folVar2 = folVar;
            i4 = Integer.MIN_VALUE;
            i5 = i17;
            if (mode2 == i4) {
            }
            eb = aepVar.eb();
            int[] iArr2 = aepVar.bo;
            arVar = aepVar.v;
            if (i5 == eb) {
            }
            arVar.f10694g = true;
            aepVar.cv = 0;
            aepVar.cb = 0;
            iArr2[0] = this.p - i20;
            iArr2[1] = this.f131c - i19;
            aepVar.bb = 0;
            aepVar.au = 0;
            aepVar.ds(folVar2);
            aepVar.ed(i5);
            aepVar.dl(folVar3);
            aepVar.dj(max2);
            i6 = this.i - i20;
            if (i6 < 0) {
            }
            i7 = this.j - i19;
            if (i7 < 0) {
            }
            aepVar.z = max5;
            aepVar.o = max3;
            dzhVar = aepVar.f10110b;
            aep aepVar22 = (aep) dzhVar.f15122g;
            arrayList = (ArrayList) dzhVar.i;
            gri griVar52 = aepVar.y;
            int size42 = aepVar.x.size();
            int eb22 = aepVar.eb();
            int di7 = aepVar.di();
            boolean x2 = bff.x(i, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            if (x2) {
            }
            if (z) {
            }
            i8 = size42;
            z2 = z;
            z3 = z2 & ((mode != 1073741824 && mode2 == 1073741824) || x2);
            if (z3) {
            }
            if (z5) {
            }
            int i242 = aepVar.w;
            if (i8 > 0) {
            }
            dzhVar.ac(aepVar);
            size = arrayList.size();
            if (i8 > 0) {
            }
            if (size > 0) {
            }
            aepVar.w = i242;
            bwo.f12323a = aepVar.ag(512);
        }
        max = Math.max(0, this.i);
        fol folVar42 = folVar;
        i5 = max;
        folVar2 = folVar42;
        i4 = Integer.MIN_VALUE;
        if (mode2 == i4) {
        }
        eb = aepVar.eb();
        int[] iArr22 = aepVar.bo;
        arVar = aepVar.v;
        if (i5 == eb) {
        }
        arVar.f10694g = true;
        aepVar.cv = 0;
        aepVar.cb = 0;
        iArr22[0] = this.p - i20;
        iArr22[1] = this.f131c - i19;
        aepVar.bb = 0;
        aepVar.au = 0;
        aepVar.ds(folVar2);
        aepVar.ed(i5);
        aepVar.dl(folVar3);
        aepVar.dj(max2);
        i6 = this.i - i20;
        if (i6 < 0) {
        }
        i7 = this.j - i19;
        if (i7 < 0) {
        }
        aepVar.z = max5;
        aepVar.o = max3;
        dzhVar = aepVar.f10110b;
        aep aepVar222 = (aep) dzhVar.f15122g;
        arrayList = (ArrayList) dzhVar.i;
        gri griVar522 = aepVar.y;
        int size422 = aepVar.x.size();
        int eb222 = aepVar.eb();
        int di72 = aepVar.di();
        boolean x22 = bff.x(i, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        if (x22) {
        }
        if (z) {
        }
        i8 = size422;
        z2 = z;
        z3 = z2 & ((mode != 1073741824 && mode2 == 1073741824) || x22);
        if (z3) {
        }
        if (z5) {
        }
        int i2422 = aepVar.w;
        if (i8 > 0) {
        }
        dzhVar.ac(aepVar);
        size = arrayList.size();
        if (i8 > 0) {
        }
        if (size > 0) {
        }
        aepVar.w = i2422;
        bwo.f12323a = aepVar.ag(512);
    }

    public void setConstraintSet(ebt ebtVar) {
        this.f133e = ebtVar;
    }

    @Override // android.view.View
    public void setId(int i) {
        int id = getId();
        SparseArray sparseArray = this.k;
        sparseArray.remove(id);
        super.setId(i);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.f131c) {
            return;
        }
        this.f131c = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.p) {
            return;
        }
        this.p = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.j) {
            return;
        }
        this.j = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.i) {
            return;
        }
        this.i = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(ahi ahiVar) {
        akj akjVar = this.h;
        if (akjVar != null) {
            akjVar.getClass();
        }
    }

    public void setOptimizationLevel(int i) {
        this.l = i;
        aep aepVar = this.f134f;
        aepVar.w = i;
        bwo.f12323a = aepVar.ag(512);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public final void t(brh brhVar, dnk dnkVar, SparseArray sparseArray, int i, dih dihVar) {
        View view = (View) this.k.get(i);
        brh brhVar2 = (brh) sparseArray.get(i);
        if (brhVar2 == null || view == null || !(view.getLayoutParams() instanceof dnk)) {
            return;
        }
        dnkVar.p = true;
        dih dihVar2 = dih.BASELINE;
        if (dihVar == dihVar2) {
            dnk dnkVar2 = (dnk) view.getLayoutParams();
            dnkVar2.p = true;
            dnkVar2.aw.cx = true;
        }
        brhVar.m(dihVar2).r(brhVar2.m(dihVar), dnkVar.aa, dnkVar.ac, true);
        brhVar.cx = true;
        brhVar.m(dih.TOP).s();
        brhVar.m(dih.BOTTOM).s();
    }

    public final void u(AttributeSet attributeSet, int i) {
        aep aepVar = this.f134f;
        aepVar.bh = this;
        gri griVar = this.f132d;
        aepVar.y = griVar;
        aepVar.v.f10692e = griVar;
        this.k.put(getId(), this);
        this.f133e = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, bfv.f11480g, i, 0);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 16) {
                    this.i = obtainStyledAttributes.getDimensionPixelOffset(index, this.i);
                } else if (index == 17) {
                    this.j = obtainStyledAttributes.getDimensionPixelOffset(index, this.j);
                } else if (index == 14) {
                    this.p = obtainStyledAttributes.getDimensionPixelOffset(index, this.p);
                } else if (index == 15) {
                    this.f131c = obtainStyledAttributes.getDimensionPixelOffset(index, this.f131c);
                } else if (index == 113) {
                    this.l = obtainStyledAttributes.getInt(index, this.l);
                } else if (index == 56) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            v(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.h = null;
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        ebt ebtVar = new ebt();
                        this.f133e = ebtVar;
                        ebtVar.p(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f133e = null;
                    }
                    this.f135g = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        aepVar.w = this.l;
        bwo.f12323a = aepVar.ag(512);
    }

    public final void v(int i) {
        int eventType;
        gvg gvgVar;
        Context context = getContext();
        akj akjVar = new akj(6);
        akjVar.h = new SparseArray();
        akjVar.f10384f = new SparseArray();
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            eventType = xml.getEventType();
            gvgVar = null;
        } catch (IOException e2) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i, e2);
        } catch (XmlPullParserException e3) {
            Log.e("ConstraintLayoutStates", "Error parsing resource: " + i, e3);
        }
        while (true) {
            char c2 = 1;
            if (eventType == 1) {
                this.h = akjVar;
                return;
            }
            if (eventType == 2) {
                String name = xml.getName();
                switch (name.hashCode()) {
                    case -1349929691:
                        if (name.equals("ConstraintSet")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 80204913:
                        if (name.equals("State")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1382829617:
                        if (name.equals("StateSet")) {
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1657696882:
                        if (name.equals("layoutDescription")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1901439077:
                        if (name.equals("Variant")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                if (c2 == 2) {
                    gvg gvgVar2 = new gvg(context, xml);
                    ((SparseArray) akjVar.h).put(gvgVar2.f18813e, gvgVar2);
                    gvgVar = gvgVar2;
                } else if (c2 == 3) {
                    dos dosVar = new dos(context, xml);
                    if (gvgVar != null) {
                        ((ArrayList) gvgVar.f18811c).add(dosVar);
                    }
                } else if (c2 == 4) {
                    akjVar.v(context, xml);
                }
            }
            eventType = xml.next();
        }
    }
}
