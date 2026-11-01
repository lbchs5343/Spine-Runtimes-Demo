package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.timepicker.b;
import g.akz;
import g.bt;
import g.czg;
import g.egh;
import g.ett;
import g.eyt;
import g.git;
import g.goi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class MaterialButtonToggleGroup extends czg {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9014a = 0;

    /* renamed from: b, reason: collision with root package name */
    public HashSet f9015b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9016c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f9017d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f9018e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f9019f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9020g;

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet);
        this.f9018e = new LinkedHashSet();
        this.f9017d = false;
        this.f9015b = new HashSet();
        TypedArray bd = eyt.bd(getContext(), attributeSet, git.v, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        setSingleSelection(bd.getBoolean(7, false));
        this.f9016c = bd.getResourceId(2, -1);
        this.f9019f = bd.getBoolean(4, false);
        if (this.s == null) {
            this.s = bt.e(new ett(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        }
        setEnabled(bd.getBoolean(0, true));
        bd.recycle();
        setImportantForAccessibility(1);
    }

    private String getChildrenA11yClassName() {
        return (this.f9020g ? RadioButton.class : ToggleButton.class).getName();
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && getChildAt(i2).getVisibility() != 8) {
                i++;
            }
        }
        return i;
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setA11yClassName(getChildrenA11yClassName());
    }

    @Override // g.czg, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setupButtonChild(materialButton);
        h(materialButton.getId(), materialButton.j);
        goi.ab(materialButton, new akz(3, this));
    }

    public int getCheckedButtonId() {
        if (!this.f9020g || this.f9015b.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f9015b.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            if (this.f9015b.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    public final void h(int i, boolean z) {
        if (i == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i);
            return;
        }
        HashSet hashSet = new HashSet(this.f9015b);
        if (z && !hashSet.contains(Integer.valueOf(i))) {
            if (this.f9020g && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i));
        } else {
            if (z || !hashSet.contains(Integer.valueOf(i))) {
                return;
            }
            if (!this.f9019f || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i));
            }
        }
        i(hashSet);
    }

    public final void i(Set set) {
        HashSet hashSet = this.f9015b;
        this.f9015b = new HashSet(set);
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            boolean contains = set.contains(Integer.valueOf(id));
            View findViewById = findViewById(id);
            if (findViewById instanceof MaterialButton) {
                this.f9017d = true;
                ((MaterialButton) findViewById).setChecked(contains);
                this.f9017d = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                set.contains(Integer.valueOf(id));
                Iterator it = this.f9018e.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).a();
                }
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f9016c;
        if (i != -1) {
            i(Collections.singleton(Integer.valueOf(i)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, getVisibleButtonCount(), false, this.f9020g ? 1 : 2));
    }

    public void setSelectionRequired(boolean z) {
        this.f9019f = z;
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.f9020g != z) {
            this.f9020g = z;
            i(new HashSet());
        }
        String childrenA11yClassName = getChildrenA11yClassName();
        for (int i = 0; i < getChildCount(); i++) {
            ((MaterialButton) getChildAt(i)).setA11yClassName(childrenA11yClassName);
        }
    }
}
