package g;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public abstract class czg extends LinearLayout {
    public int j;
    public dsx k;
    public boolean l;
    public final dcq m;
    public final aou n;
    public Integer[] o;
    public final ArrayList p;
    public buy q;
    public final ArrayList r;
    public bt s;

    public czg(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, R.attr.materialButtonToggleGroupStyle, R.style.Widget_Material3_MaterialButtonGroup), attributeSet, R.attr.materialButtonToggleGroupStyle);
        bt e2;
        XmlResourceParser xml;
        int next;
        buy buyVar;
        AttributeSet asAttributeSet;
        int next2;
        this.p = new ArrayList();
        this.r = new ArrayList();
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this;
        this.m = new dcq(13, materialButtonToggleGroup);
        this.n = new aou(1, materialButtonToggleGroup);
        this.l = true;
        Context context2 = getContext();
        TypedArray bd = eyt.bd(context2, attributeSet, git.f18220e, R.attr.materialButtonToggleGroupStyle, R.style.Widget_Material3_MaterialButtonGroup, new int[0]);
        if (bd.hasValue(2)) {
            int resourceId = bd.getResourceId(2, 0);
            if (resourceId != 0 && context2.getResources().getResourceTypeName(resourceId).equals("xml")) {
                try {
                    xml = context2.getResources().getXml(resourceId);
                    try {
                        buyVar = new buy();
                        buyVar.f12253d = new int[10][];
                        buyVar.f12250a = new aoy[10];
                        asAttributeSet = Xml.asAttributeSet(xml);
                        do {
                            next2 = xml.next();
                            if (next2 == 2) {
                                break;
                            }
                        } while (next2 != 1);
                    } finally {
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
                }
                if (next2 != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (xml.getName().equals("selector")) {
                    buyVar.e(context2, xml, asAttributeSet, context2.getTheme());
                }
                xml.close();
                this.q = buyVar;
            }
            buyVar = null;
            this.q = buyVar;
        }
        if (bd.hasValue(4)) {
            dsx j = dsx.j(context2, bd, 4);
            this.k = j;
            if (j == null) {
                ke keVar = new ke(cjg.m(context2, bd.getResourceId(4, 0), bd.getResourceId(5, 0), new ett(0)).n());
                this.k = keVar.f19538g != 0 ? new dsx(keVar) : null;
            }
        }
        if (bd.hasValue(3)) {
            ett ettVar = new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            int resourceId2 = bd.getResourceId(3, 0);
            if (resourceId2 == 0) {
                e2 = bt.e(cjg.o(bd, 3, ettVar));
            } else if (context2.getResources().getResourceTypeName(resourceId2).equals("xml")) {
                try {
                    xml = context2.getResources().getXml(resourceId2);
                    try {
                        e2 = new bt();
                        AttributeSet asAttributeSet2 = Xml.asAttributeSet(xml);
                        do {
                            next = xml.next();
                            if (next == 2) {
                                break;
                            }
                        } while (next != 1);
                        if (next != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml.getName().equals("selector")) {
                            e2.f(context2, xml, asAttributeSet2, context2.getTheme());
                        }
                        xml.close();
                    } finally {
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused2) {
                    e2 = bt.e(ettVar);
                }
            } else {
                e2 = bt.e(cjg.o(bd, 3, ettVar));
            }
            this.s = e2;
        }
        this.j = bd.getDimensionPixelSize(1, 0);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(bd.getBoolean(0, true));
        bd.recycle();
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (x(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (x(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(View.generateViewId());
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonGroup", "Child views must be of type MaterialButton.");
            return;
        }
        t();
        this.l = true;
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        materialButton.setOnPressedChangeListenerInternal(this.m);
        this.p.add(materialButton.getShapeAppearanceModel());
        this.r.add(materialButton.getStateListShapeAppearanceModel());
        materialButton.setEnabled(isEnabled());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.n);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put((MaterialButton) getChildAt(i), Integer.valueOf(i));
        }
        this.o = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public buy getButtonSizeChange() {
        return this.q;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.o;
        return (numArr == null || i2 >= numArr.length) ? i2 : numArr[i2].intValue();
    }

    public gjn getInnerCornerSize() {
        return this.s.f12164c;
    }

    public bt getInnerCornerSizeStateList() {
        return this.s;
    }

    public cjg getShapeAppearance() {
        dsx dsxVar = this.k;
        if (dsxVar == null) {
            return null;
        }
        return dsxVar.l();
    }

    public int getSpacing() {
        return this.j;
    }

    public dsx getStateListShapeAppearance() {
        return this.k;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            t();
            w();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        u();
        v();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.p.remove(indexOfChild);
            this.r.remove(indexOfChild);
        }
        this.l = true;
        u();
        t();
        v();
    }

    public void setButtonSizeChange(buy buyVar) {
        if (this.q != buyVar) {
            this.q = buyVar;
            w();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i = 0; i < getChildCount(); i++) {
            ((MaterialButton) getChildAt(i)).setEnabled(z);
        }
    }

    public void setInnerCornerSize(gjn gjnVar) {
        this.s = bt.e(gjnVar);
        this.l = true;
        u();
        invalidate();
    }

    public void setInnerCornerSizeStateList(bt btVar) {
        this.s = btVar;
        this.l = true;
        u();
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (getOrientation() != i) {
            this.l = true;
        }
        super.setOrientation(i);
    }

    public void setShapeAppearance(cjg cjgVar) {
        ke keVar = new ke(cjgVar);
        this.k = keVar.f19538g == 0 ? null : new dsx(keVar);
        this.l = true;
        u();
        invalidate();
    }

    public void setSpacing(int i) {
        this.j = i;
        invalidate();
        requestLayout();
    }

    public void setStateListShapeAppearance(dsx dsxVar) {
        this.k = dsxVar;
        this.l = true;
        u();
        invalidate();
    }

    public final void t() {
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i);
            LinearLayout.LayoutParams layoutParams = materialButton.i;
            if (layoutParams != null) {
                materialButton.setLayoutParams(layoutParams);
                materialButton.i = null;
                materialButton.q = -1.0f;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [g.cjg[], java.io.Serializable] */
    public final void u() {
        ke keVar;
        int i;
        if (!(this.s == null && this.k == null) && this.l) {
            this.l = false;
            int childCount = getChildCount();
            int firstVisibleChildIndex = getFirstVisibleChildIndex();
            int lastVisibleChildIndex = getLastVisibleChildIndex();
            int i2 = 0;
            while (i2 < childCount) {
                MaterialButton materialButton = (MaterialButton) getChildAt(i2);
                if (materialButton.getVisibility() != 8) {
                    boolean z = i2 == firstVisibleChildIndex;
                    boolean z2 = i2 == lastVisibleChildIndex;
                    dsx dsxVar = this.k;
                    if (dsxVar == null || (!z && !z2)) {
                        dsxVar = (dsx) this.r.get(i2);
                    }
                    if (dsxVar == null) {
                        keVar = new ke((cjg) this.p.get(i2));
                    } else {
                        ke keVar2 = new ke(2);
                        int i3 = dsxVar.f14745d;
                        keVar2.f19538g = i3;
                        keVar2.f19533b = dsxVar.f14747f;
                        int[][] iArr = dsxVar.f14748g;
                        int[][] iArr2 = new int[iArr.length][];
                        keVar2.f19534c = iArr2;
                        cjg[] cjgVarArr = dsxVar.f14743b;
                        keVar2.f19536e = new cjg[cjgVarArr.length];
                        System.arraycopy(iArr, 0, iArr2, 0, i3);
                        System.arraycopy(cjgVarArr, 0, (cjg[]) keVar2.f19536e, 0, keVar2.f19538g);
                        keVar2.h = dsxVar.f14744c;
                        keVar2.i = dsxVar.f14746e;
                        keVar2.f19532a = dsxVar.h;
                        keVar2.f19537f = dsxVar.f14742a;
                        keVar = keVar2;
                    }
                    boolean z3 = getOrientation() == 0;
                    boolean z4 = getLayoutDirection() == 1;
                    if (z3) {
                        i = z ? 5 : 0;
                        if (z2) {
                            i |= 10;
                        }
                        if (z4) {
                            i = ((i & 10) >> 1) | ((i & 5) << 1);
                        }
                    } else {
                        i = z ? 3 : 0;
                        if (z2) {
                            i |= 12;
                        }
                    }
                    int i4 = ~i;
                    bt btVar = this.s;
                    if ((i4 | 1) == i4) {
                        keVar.h = btVar;
                    }
                    if ((i4 | 2) == i4) {
                        keVar.i = btVar;
                    }
                    if ((i4 | 4) == i4) {
                        keVar.f19532a = btVar;
                    }
                    if ((i4 | 8) == i4) {
                        keVar.f19537f = btVar;
                    }
                    dsx dsxVar2 = keVar.f19538g == 0 ? null : new dsx(keVar);
                    if (dsxVar2.k()) {
                        materialButton.setStateListShapeAppearanceModel(dsxVar2);
                    } else {
                        materialButton.setShapeAppearanceModel(dsxVar2.l());
                    }
                }
                i2++;
            }
        }
    }

    public final void v() {
        int i;
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i2 = firstVisibleChildIndex + 1; i2 < getChildCount(); i2++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i2);
            MaterialButton materialButton2 = (MaterialButton) getChildAt(i2 - 1);
            if (this.j <= 0) {
                i = Math.min(materialButton.getStrokeWidth(), materialButton2.getStrokeWidth());
                materialButton.setShouldDrawSurfaceColorStroke(true);
                materialButton2.setShouldDrawSurfaceColorStroke(true);
            } else {
                materialButton.setShouldDrawSurfaceColorStroke(false);
                materialButton2.setShouldDrawSurfaceColorStroke(false);
                i = 0;
            }
            ViewGroup.LayoutParams layoutParams = materialButton.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(this.j - i);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = this.j - i;
                layoutParams2.setMarginStart(0);
            }
            materialButton.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            layoutParams3.setMarginEnd(0);
            layoutParams3.setMarginStart(0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    public final void w() {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        float max;
        if (this.q == null || getChildCount() == 0) {
            return;
        }
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        int i = he.UNDEFINED_ITEM_ID;
        for (int i2 = firstVisibleChildIndex; i2 <= lastVisibleChildIndex; i2++) {
            if (x(i2)) {
                if (x(i2) && this.q != null) {
                    MaterialButton materialButton3 = (MaterialButton) getChildAt(i2);
                    buy buyVar = this.q;
                    int width = materialButton3.getWidth();
                    int i3 = -width;
                    for (int i4 = 0; i4 < buyVar.f12251b; i4++) {
                        fr frVar = (fr) buyVar.f12250a[i4].h;
                        ghi ghiVar = (ghi) frVar.f17271b;
                        float f2 = frVar.f17270a;
                        if (ghiVar == ghi.PIXELS) {
                            max = Math.max(i3, f2);
                        } else if (ghiVar == ghi.PERCENT) {
                            max = Math.max(i3, width * f2);
                        }
                        i3 = (int) max;
                    }
                    int max2 = Math.max(0, i3);
                    int i5 = i2 - 1;
                    while (true) {
                        materialButton = null;
                        if (i5 < 0) {
                            materialButton2 = null;
                            break;
                        } else {
                            if (x(i5)) {
                                materialButton2 = (MaterialButton) getChildAt(i5);
                                break;
                            }
                            i5--;
                        }
                    }
                    int allowedWidthDecrease = materialButton2 == null ? 0 : materialButton2.getAllowedWidthDecrease();
                    int childCount = getChildCount();
                    int i6 = i2 + 1;
                    while (true) {
                        if (i6 >= childCount) {
                            break;
                        }
                        if (x(i6)) {
                            materialButton = (MaterialButton) getChildAt(i6);
                            break;
                        }
                        i6++;
                    }
                    r5 = Math.min(max2, allowedWidthDecrease + (materialButton != null ? materialButton.getAllowedWidthDecrease() : 0));
                }
                if (i2 != firstVisibleChildIndex && i2 != lastVisibleChildIndex) {
                    r5 /= 2;
                }
                i = Math.min(i, r5);
            }
        }
        int i7 = firstVisibleChildIndex;
        while (i7 <= lastVisibleChildIndex) {
            if (x(i7)) {
                ((MaterialButton) getChildAt(i7)).setSizeChange(this.q);
                ((MaterialButton) getChildAt(i7)).setWidthChangeMax((i7 == firstVisibleChildIndex || i7 == lastVisibleChildIndex) ? i : i * 2);
            }
            i7++;
        }
    }

    public final boolean x(int i) {
        return getChildAt(i).getVisibility() != 8;
    }
}
