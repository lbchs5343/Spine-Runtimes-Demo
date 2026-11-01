package g;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class gas<S> extends androidx.fragment.app.b {
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public boolean f17816ab;
    public CharSequence ac;
    public CharSequence ad;
    public cyy ae;

    /* renamed from: g, reason: collision with root package name */
    public int f17817g;
    public int h;
    public TextView i;
    public ebb j;
    public CharSequence k;
    public ddm l;
    public CharSequence m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public CheckableImageButton r;
    public CharSequence s;
    public ghs t;
    public fin u;
    public int v;
    public final LinkedHashSet w;
    public CharSequence x;
    public CharSequence y;
    public final LinkedHashSet z;

    public gas() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.w = new LinkedHashSet();
        this.z = new LinkedHashSet();
    }

    public static int af(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        int i = edj.current().daysInWeek;
        return ((i - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * i) + (dimensionPixelOffset * 2);
    }

    public static boolean ag(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(bfc.ad(context, R.attr.materialCalendarStyle, ebb.class.getCanonicalName()).data, new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    public final void ah() {
        if (getArguments().getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
    }

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.o = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.u = (fin) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.ae = (cyy) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f17817g = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.y = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.q = bundle.getInt("INPUT_MODE_KEY");
        this.p = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.ad = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.aa = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.m = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.h = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.ac = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.v = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.s = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence charSequence = this.y;
        if (charSequence == null) {
            charSequence = requireContext().getResources().getText(this.f17817g);
        }
        this.x = charSequence;
        if (charSequence != null) {
            CharSequence[] split = TextUtils.split(String.valueOf(charSequence), "\n");
            if (split.length > 1) {
                charSequence = split[0];
            }
        } else {
            charSequence = null;
        }
        this.k = charSequence;
    }

    @Override // androidx.fragment.app.b
    public final Dialog onCreateDialog(Bundle bundle) {
        Context requireContext = requireContext();
        requireContext();
        int i = this.o;
        if (i == 0) {
            ah();
            throw null;
        }
        Dialog dialog = new Dialog(requireContext, i);
        Context context = dialog.getContext();
        this.n = ag(context, android.R.attr.windowFullscreen);
        this.l = new ddm(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, git.aa, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = obtainStyledAttributes.getColor(1, 0);
        obtainStyledAttributes.recycle();
        this.l.ef(context);
        this.l.en(ColorStateList.valueOf(color));
        this.l.ec(dialog.getWindow().getDecorView().getElevation());
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.n ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        cyy cyyVar = this.ae;
        if (cyyVar != null) {
            cyyVar.initialize(context);
        }
        if (this.n) {
            inflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(af(context), -2));
        } else {
            inflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(af(context), -1));
        }
        ((TextView) inflate.findViewById(R.id.mtrl_picker_header_selection_text)).setAccessibilityLiveRegion(1);
        this.r = (CheckableImageButton) inflate.findViewById(R.id.mtrl_picker_header_toggle);
        this.i = (TextView) inflate.findViewById(R.id.mtrl_picker_title_text);
        this.r.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.r;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, fso.ai(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], fso.ai(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.r.setChecked(this.q != 0);
        goi.ab(this.r, null);
        CheckableImageButton checkableImageButton2 = this.r;
        this.r.setContentDescription(this.q == 1 ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        this.r.setOnClickListener(new ld(6, this));
        ah();
        throw null;
    }

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.z.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        edj edjVar;
        edj edjVar2;
        edj edjVar3;
        int i;
        ewr ewrVar;
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.o);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        fin finVar = this.u;
        gwk gwkVar = new gwk();
        int i2 = gwk.f18882a;
        int i3 = gwk.f18882a;
        dhs.from(Long.MIN_VALUE);
        edjVar = finVar.start;
        long j = edjVar.timeInMillis;
        edjVar2 = finVar.end;
        long j2 = edjVar2.timeInMillis;
        edjVar3 = finVar.openAt;
        gwkVar.f18883b = Long.valueOf(edjVar3.timeInMillis);
        i = finVar.firstDayOfWeek;
        ewrVar = finVar.validator;
        ebb ebbVar = this.j;
        edj edjVar4 = ebbVar == null ? null : ebbVar.n;
        if (edjVar4 != null) {
            gwkVar.f18883b = Long.valueOf(edjVar4.timeInMillis);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", ewrVar);
        edj create = edj.create(j);
        edj create2 = edj.create(j2);
        ewr ewrVar2 = (ewr) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l = gwkVar.f18883b;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new fin(create, create2, ewrVar2, l != null ? edj.create(l.longValue()) : null, i, null));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.ae);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f17817g);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.y);
        bundle.putInt("INPUT_MODE_KEY", this.q);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.p);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.ad);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.aa);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.m);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.h);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.ac);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.v);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.s);
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.n) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.l);
            if (!this.f17816ab) {
                View findViewById = requireView().findViewById(R.id.fullscreen_header);
                ColorStateList bw = acr.bw(findViewById.getBackground());
                Integer valueOf = bw != null ? Integer.valueOf(bw.getDefaultColor()) : null;
                boolean z = valueOf == null || valueOf.intValue() == 0;
                int z2 = eyt.z(window.getContext(), android.R.attr.colorBackground, -16777216);
                if (z) {
                    valueOf = Integer.valueOf(z2);
                }
                cro.aw(window, false);
                Context context = window.getContext();
                int i = Build.VERSION.SDK_INT;
                int c2 = i < 23 ? afr.c(eyt.z(context, android.R.attr.statusBarColor, -16777216), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) : 0;
                int c3 = i < 27 ? afr.c(eyt.z(window.getContext(), android.R.attr.navigationBarColor, -16777216), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) : 0;
                window.setStatusBarColor(c2);
                window.setNavigationBarColor(c3);
                int intValue = valueOf.intValue();
                boolean z3 = (c2 != 0 && afr.e(c2) > 0.5d) || (c2 == 0 && (intValue != 0 && (afr.e(intValue) > 0.5d ? 1 : (afr.e(intValue) == 0.5d ? 0 : -1)) > 0));
                bli bliVar = new bli(window.getDecorView());
                int i2 = Build.VERSION.SDK_INT;
                (i2 >= 35 ? new egy(window, bliVar) : i2 >= 30 ? new fqu(window, bliVar) : i2 >= 26 ? new bla(window, bliVar) : i2 >= 23 ? new boy(window, bliVar) : new djy(window, bliVar)).b(z3);
                boolean z4 = (c3 != 0 && afr.e(c3) > 0.5d) || (c3 == 0 && (z2 != 0 && (afr.e(z2) > 0.5d ? 1 : (afr.e(z2) == 0.5d ? 0 : -1)) > 0));
                bli bliVar2 = new bli(window.getDecorView());
                int i3 = Build.VERSION.SDK_INT;
                (i3 >= 35 ? new egy(window, bliVar2) : i3 >= 30 ? new fqu(window, bliVar2) : i3 >= 26 ? new bla(window, bliVar2) : i3 >= 23 ? new boy(window, bliVar2) : new djy(window, bliVar2)).a(z4);
                gme gmeVar = new gme(findViewById, findViewById.getLayoutParams().height, findViewById.getPaddingLeft(), findViewById.getPaddingTop(), findViewById.getPaddingRight());
                WeakHashMap weakHashMap = goi.f18490c;
                cd.b(findViewById, gmeVar);
                this.f17816ab = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.l, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new dpr(requireDialog(), rect));
        }
        requireContext();
        int i4 = this.o;
        if (i4 == 0) {
            ah();
            throw null;
        }
        ah();
        fin finVar = this.u;
        cyy cyyVar = this.ae;
        ebb ebbVar = new ebb();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i4);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", finVar);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", cyyVar);
        bundle.putParcelable("CURRENT_MONTH_KEY", finVar.getOpenAt());
        ebbVar.setArguments(bundle);
        this.j = ebbVar;
        ghs ghsVar = ebbVar;
        if (this.q == 1) {
            ah();
            fin finVar2 = this.u;
            ghs eqfVar = new eqf();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i4);
            bundle2.putParcelable("DATE_SELECTOR_KEY", null);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", finVar2);
            eqfVar.setArguments(bundle2);
            ghsVar = eqfVar;
        }
        this.t = ghsVar;
        this.i.setText((this.q == 1 && getResources().getConfiguration().orientation == 2) ? this.k : this.x);
        ah();
        throw null;
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public final void onStop() {
        this.t.w.clear();
        super.onStop();
    }
}
