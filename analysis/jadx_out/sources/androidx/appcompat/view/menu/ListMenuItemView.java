package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import g.acs;
import g.dzh;
import g.ebq;
import g.far;
import g.ftn;

/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements ebq, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a, reason: collision with root package name */
    public ImageView f52a;

    /* renamed from: b, reason: collision with root package name */
    public LayoutInflater f53b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f54c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f55d;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f56e;

    /* renamed from: f, reason: collision with root package name */
    public RadioButton f57f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f58g;
    public final int h;
    public TextView i;
    public CheckBox j;
    public far k;
    public LinearLayout l;
    public ImageView m;
    public final Drawable n;
    public boolean o;
    public boolean q;
    public TextView r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        dzh j = dzh.j(getContext(), attributeSet, acs.aa, R.attr.listMenuViewStyle);
        this.f56e = j.o(5);
        TypedArray typedArray = (TypedArray) j.f15121f;
        this.h = typedArray.getResourceId(1, -1);
        this.q = typedArray.getBoolean(7, false);
        this.f58g = context;
        this.n = j.o(8);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f55d = obtainStyledAttributes.hasValue(0);
        j.af();
        obtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f53b == null) {
            this.f53b = LayoutInflater.from(getContext());
        }
        return this.f53b;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f54c;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f52a;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f52a.getLayoutParams();
        rect.top = this.f52a.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    @Override // g.ebq
    public far getItemData() {
        return this.k;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.f56e);
        TextView textView = (TextView) findViewById(R.id.title);
        this.i = textView;
        int i = this.h;
        if (i != -1) {
            textView.setTextAppearance(this.f58g, i);
        }
        this.r = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f54c = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.n);
        }
        this.f52a = (ImageView) findViewById(R.id.group_divider);
        this.l = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.m != null && this.q) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.m.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
    
        if (r0 == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0123  */
    @Override // g.ebq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(far farVar) {
        boolean z;
        String sb;
        this.k = farVar;
        int i = 0;
        setVisibility(farVar.isVisible() ? 0 : 8);
        setTitle(farVar.j);
        setCheckable(farVar.isCheckable());
        if (farVar.f16489f.ab()) {
            if ((farVar.f16489f.ac() ? farVar.x : farVar.f16485b) != 0) {
                z = true;
                farVar.f16489f.ac();
                if (z) {
                    far farVar2 = this.k;
                    if (farVar2.f16489f.ab()) {
                        boolean z2 = (farVar2.f16489f.ac() ? farVar2.x : farVar2.f16485b) != 0;
                    }
                }
                i = 8;
                if (i == 0) {
                    TextView textView = this.r;
                    far farVar3 = this.k;
                    ftn ftnVar = farVar3.f16489f;
                    Context context = ftnVar.i;
                    char c2 = ftnVar.ac() ? farVar3.x : farVar3.f16485b;
                    if (c2 == 0) {
                        sb = "";
                    } else {
                        Resources resources = context.getResources();
                        StringBuilder sb2 = new StringBuilder();
                        if (ViewConfiguration.get(context).hasPermanentMenuKey()) {
                            sb2.append(resources.getString(R.string.abc_prepend_shortcut_label));
                        }
                        int i2 = ftnVar.ac() ? farVar3.f16486c : farVar3.v;
                        far.af(i2, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label), sb2);
                        far.af(i2, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label), sb2);
                        far.af(i2, 2, resources.getString(R.string.abc_menu_alt_shortcut_label), sb2);
                        far.af(i2, 1, resources.getString(R.string.abc_menu_shift_shortcut_label), sb2);
                        far.af(i2, 4, resources.getString(R.string.abc_menu_sym_shortcut_label), sb2);
                        far.af(i2, 8, resources.getString(R.string.abc_menu_function_shortcut_label), sb2);
                        if (c2 == '\b') {
                            sb2.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                        } else if (c2 == '\n') {
                            sb2.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                        } else if (c2 != ' ') {
                            sb2.append(c2);
                        } else {
                            sb2.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                        }
                        sb = sb2.toString();
                    }
                    textView.setText(sb);
                }
                if (this.r.getVisibility() != i) {
                    this.r.setVisibility(i);
                }
                setIcon(farVar.getIcon());
                setEnabled(farVar.isEnabled());
                setSubMenuArrowVisible(farVar.hasSubMenu());
                setContentDescription(farVar.y);
            }
        }
        z = false;
        farVar.f16489f.ac();
        if (z) {
        }
        i = 8;
        if (i == 0) {
        }
        if (this.r.getVisibility() != i) {
        }
        setIcon(farVar.getIcon());
        setEnabled(farVar.isEnabled());
        setSubMenuArrowVisible(farVar.hasSubMenu());
        setContentDescription(farVar.y);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (!z && this.f57f == null && this.j == null) {
            return;
        }
        if ((this.k.ac & 4) != 0) {
            if (this.f57f == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f57f = radioButton;
                LinearLayout linearLayout = this.l;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f57f;
            view = this.j;
        } else {
            if (this.j == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.j = checkBox;
                LinearLayout linearLayout2 = this.l;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.j;
            view = this.f57f;
        }
        if (z) {
            compoundButton.setChecked(this.k.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.j;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f57f;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if ((this.k.ac & 4) != 0) {
            if (this.f57f == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f57f = radioButton;
                LinearLayout linearLayout = this.l;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f57f;
        } else {
            if (this.j == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.j = checkBox;
                LinearLayout linearLayout2 = this.l;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.j;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.o = z;
        this.q = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f52a;
        if (imageView != null) {
            imageView.setVisibility((this.f55d || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        ftn ftnVar = this.k.f16489f;
        boolean z = this.o;
        if (z || this.q) {
            ImageView imageView = this.m;
            if (imageView == null && drawable == null && !this.q) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.m = imageView2;
                LinearLayout linearLayout = this.l;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.q) {
                this.m.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.m;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.m.getVisibility() != 0) {
                this.m.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.i.getVisibility() != 8) {
                this.i.setVisibility(8);
            }
        } else {
            this.i.setText(charSequence);
            if (this.i.getVisibility() != 0) {
                this.i.setVisibility(0);
            }
        }
    }
}
