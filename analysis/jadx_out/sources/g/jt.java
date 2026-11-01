package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class jt extends View {

    /* renamed from: a, reason: collision with root package name */
    public final int f19503a;

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f19504b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19505c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f19506d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f19507e;

    /* renamed from: f, reason: collision with root package name */
    public int f19508f;

    /* renamed from: g, reason: collision with root package name */
    public int f19509g;
    public final Paint h;
    public final int i;
    public final int j;
    public final LinkedList k;
    public final Context l;
    public final int m;
    public he n;
    public final Rect o;
    public final ArrayList p;
    public bxi q;
    public final int r;

    public jt(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19508f = -1;
        this.i = -1;
        int i = 0;
        this.f19509g = 0;
        this.o = new Rect();
        this.f19506d = new int[2];
        this.f19504b = new HashSet();
        this.p = new ArrayList();
        this.k = new LinkedList();
        this.l = context;
        if (attributeSet == null) {
            this.j = eyt.af(context, R.color.colorLILight);
            this.r = eyt.af(context, R.color.colorLIBackground);
            this.f19505c = eyt.af(context, R.color.colorLICommon);
            this.f19503a = 0;
            this.m = eyt.af(context, R.color.colorLIBackground);
        } else {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ezl.f16414a);
            this.j = obtainStyledAttributes.getColor(4, eyt.af(context, R.color.colorLILight));
            this.r = obtainStyledAttributes.getColor(3, eyt.af(context, R.color.colorLIBackground));
            this.f19505c = obtainStyledAttributes.getColor(2, eyt.af(context, R.color.colorLICommon));
            this.f19503a = obtainStyledAttributes.getColor(1, 0);
            this.m = obtainStyledAttributes.getColor(0, eyt.af(context, R.color.colorLIBackground));
            obtainStyledAttributes.recycle();
        }
        Paint paint = new Paint(1);
        this.f19507e = paint;
        paint.setColor(this.j);
        Paint paint2 = this.f19507e;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        Paint paint3 = this.f19507e;
        Paint.Join join = Paint.Join.ROUND;
        paint3.setStrokeJoin(join);
        Paint paint4 = this.f19507e;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint4.setStrokeCap(cap);
        this.f19507e.setStrokeWidth(3.0f);
        Paint paint5 = new Paint(1);
        this.h = paint5;
        paint5.setColor(this.f19505c);
        this.h.setStyle(style);
        this.h.setStrokeJoin(join);
        this.h.setStrokeCap(cap);
        this.h.setStrokeWidth(9.0f);
        Context context2 = this.l;
        HashMap hashMap = fnp.f17095b;
        try {
            i = cux.as(context2);
        } catch (Exception e2) {
            erl.ac(e2);
        }
        this.i = i;
    }

    private Paint getBackgroundPaint() {
        Paint paint = new Paint(1);
        paint.setColor(this.r);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        return paint;
    }

    private Paint getHighLightBackgroundPaint() {
        Paint paint = new Paint(1);
        paint.setColor(this.f19503a);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        return paint;
    }

    public he getNodeInfo() {
        return this.n;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        he heVar = this.n;
        if (heVar == null) {
            this.f19508f = -1;
            canvas.drawColor(this.m);
            return;
        }
        this.f19508f = heVar.hashCode();
        boolean isAttachedToWindow = isAttachedToWindow();
        int[] iArr = this.f19506d;
        if (isAttachedToWindow) {
            getLocationOnScreen(iArr);
        } else {
            iArr[0] = this.f19509g;
            iArr[1] = this.i;
        }
        Rect rect = this.o;
        rect.setEmpty();
        HashSet hashSet = this.f19504b;
        hashSet.clear();
        ArrayList arrayList = this.p;
        arrayList.clear();
        LinkedList linkedList = this.k;
        linkedList.clear();
        linkedList.add(this.n);
        boolean z = true;
        while (!linkedList.isEmpty()) {
            he heVar2 = (he) linkedList.poll();
            if (heVar2 != null && hashSet.add(heVar2)) {
                List<he> childNodeInfoList = heVar2.getChildNodeInfoList();
                if (!acw.u(childNodeInfoList)) {
                    linkedList.addAll(childNodeInfoList);
                }
                heVar2.getBoundsInScreen(rect);
                if (!ern.k(rect)) {
                    rect.offset(-iArr[0], -iArr[1]);
                    if (z) {
                        Paint highLightBackgroundPaint = heVar2.isInspected() ? getHighLightBackgroundPaint() : getBackgroundPaint();
                        bxi bxiVar = this.q;
                        if (bxiVar == null || !((gpu) bxiVar).p(heVar2)) {
                            canvas.drawRect(rect, highLightBackgroundPaint);
                        }
                        z = false;
                    } else if (heVar2.isInspected()) {
                        Paint highLightBackgroundPaint2 = getHighLightBackgroundPaint();
                        bxi bxiVar2 = this.q;
                        if (bxiVar2 == null || !((gpu) bxiVar2).p(heVar2)) {
                            canvas.drawRect(rect, highLightBackgroundPaint2);
                        }
                    }
                    if (heVar2.isInspected()) {
                        arrayList.add(heVar2);
                    } else {
                        bxi bxiVar3 = this.q;
                        if (bxiVar3 == null || !((gpu) bxiVar3).p(heVar2)) {
                            canvas.drawRect(rect, this.f19507e);
                        }
                    }
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((he) it.next()).getBoundsInScreen(rect);
            rect.offset(-iArr[0], -iArr[1]);
            canvas.drawRect(rect, this.h);
        }
    }

    public final boolean s(he heVar) {
        if (this.n != null && heVar != null && this.f19508f == heVar.hashCode()) {
            return false;
        }
        this.n = heVar;
        invalidate();
        return true;
    }

    public void setInspectorViewFilter(bxi bxiVar) {
        this.q = bxiVar;
    }

    public void setSpecialMarkUp(int i) {
        this.f19509g = i;
    }
}
