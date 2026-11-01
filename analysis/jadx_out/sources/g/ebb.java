package g;

import android.R;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;

/* loaded from: classes3.dex */
public final class ebb<S> extends ghs {

    /* renamed from: f, reason: collision with root package name */
    public RecyclerView f15219f;

    /* renamed from: g, reason: collision with root package name */
    public akj f15220g;
    public AccessibilityManager h;
    public View i;
    public fin j;
    public View k;
    public View l;
    public cyy m;
    public edj n;
    public RecyclerView o;
    public int p;
    public MaterialButton q;
    public View r;
    public fxs s;

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.p = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.j = (fin) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.m = (cyy) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.n = (edj) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        bnj bnjVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.p);
        this.f15220g = new akj(contextThemeWrapper, 5);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        this.h = (AccessibilityManager) requireContext().getSystemService("accessibility");
        edj start = this.j.getStart();
        if (gas.ag(contextThemeWrapper, R.attr.windowFullscreen)) {
            i = cn.trinea.android.developertools.R.layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = cn.trinea.android.developertools.R.layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View inflate = cloneInContext.inflate(i, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.mtrl_calendar_days_of_week_height);
        int i3 = ahj.f10223a;
        inflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.mtrl_calendar_month_vertical_padding) * (i3 - 1)) + (resources.getDimensionPixelSize(cn.trinea.android.developertools.R.dimen.mtrl_calendar_day_height) * i3) + resources.getDimensionPixelOffset(cn.trinea.android.developertools.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) inflate.findViewById(cn.trinea.android.developertools.R.id.mtrl_calendar_days_of_week);
        goi.ab(gridView, new glf(0));
        int firstDayOfWeek = this.j.getFirstDayOfWeek();
        gridView.setAdapter((ListAdapter) (firstDayOfWeek > 0 ? new ffq(firstDayOfWeek) : new ffq()));
        gridView.setNumColumns(start.daysInWeek);
        gridView.setEnabled(false);
        this.o = (RecyclerView) inflate.findViewById(cn.trinea.android.developertools.R.id.mtrl_calendar_months);
        this.o.setLayoutManager(new ebj(this, i2, i2));
        this.o.setTag("MONTHS_VIEW_GROUP_TAG");
        com.google.android.material.datepicker.c cVar = new com.google.android.material.datepicker.c(contextThemeWrapper, this.j, this.m, new fc(13, this));
        this.o.setAdapter(cVar);
        int integer = contextThemeWrapper.getResources().getInteger(cn.trinea.android.developertools.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView3 = (RecyclerView) inflate.findViewById(cn.trinea.android.developertools.R.id.mtrl_calendar_year_selector_frame);
        this.f15219f = recyclerView3;
        if (recyclerView3 != null) {
            recyclerView3.setHasFixedSize(true);
            this.f15219f.setLayoutManager(new GridLayoutManager(integer, 0));
            this.f15219f.setAdapter(new ehd(this));
            RecyclerView recyclerView4 = this.f15219f;
            vu vuVar = new vu();
            fau.d(null);
            fau.d(null);
            recyclerView4.addItemDecoration(vuVar);
        }
        View findViewById = inflate.findViewById(cn.trinea.android.developertools.R.id.month_navigation_fragment_toggle);
        fin finVar = cVar.f9042b;
        if (findViewById != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(cn.trinea.android.developertools.R.id.month_navigation_fragment_toggle);
            this.q = materialButton;
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            goi.ab(this.q, new akz(4, this));
            View findViewById2 = inflate.findViewById(cn.trinea.android.developertools.R.id.month_navigation_previous);
            this.i = findViewById2;
            findViewById2.setTag("NAVIGATION_PREV_TAG");
            View findViewById3 = inflate.findViewById(cn.trinea.android.developertools.R.id.month_navigation_next);
            this.l = findViewById3;
            findViewById3.setTag("NAVIGATION_NEXT_TAG");
            this.k = inflate.findViewById(cn.trinea.android.developertools.R.id.mtrl_calendar_year_selector_frame);
            this.r = inflate.findViewById(cn.trinea.android.developertools.R.id.mtrl_calendar_day_selector_frame);
            v(fxs.DAY);
            this.q.setText(this.n.getLongName());
            this.o.addOnScrollListener(new ahv(this, cVar));
            this.q.setOnClickListener(new get(10, this));
            this.l.setOnClickListener(new bhp(this, cVar, 1));
            this.i.setOnClickListener(new bhp(this, cVar, 0));
            t(finVar.getStart().monthsUntil(this.n));
        }
        if (!gas.ag(contextThemeWrapper, R.attr.windowFullscreen) && (recyclerView2 = (bnjVar = new bnj()).f11874b) != (recyclerView = this.o)) {
            adp adpVar = bnjVar.f11875c;
            if (recyclerView2 != null) {
                recyclerView2.removeOnScrollListener(adpVar);
                bnjVar.f11874b.setOnFlingListener(null);
            }
            bnjVar.f11874b = recyclerView;
            if (recyclerView != null) {
                if (recyclerView.getOnFlingListener() != null) {
                    throw new IllegalStateException("An instance of OnFlingListener already set.");
                }
                bnjVar.f11874b.addOnScrollListener(adpVar);
                bnjVar.f11874b.setOnFlingListener(bnjVar);
                new Scroller(bnjVar.f11874b.getContext(), new DecelerateInterpolator());
                bnjVar.j();
            }
        }
        this.o.scrollToPosition(finVar.getStart().monthsUntil(this.n));
        goi.ab(this.o, new glf(1));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.p);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.j);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.m);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.n);
    }

    public final void t(int i) {
        this.l.setEnabled(i + 1 < this.o.getAdapter().getItemCount());
        this.i.setEnabled(i - 1 >= 0);
    }

    public final void u(edj edjVar) {
        com.google.android.material.datepicker.c cVar = (com.google.android.material.datepicker.c) this.o.getAdapter();
        int monthsUntil = cVar.f9042b.getStart().monthsUntil(edjVar);
        AccessibilityManager accessibilityManager = this.h;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            int monthsUntil2 = monthsUntil - cVar.f9042b.getStart().monthsUntil(this.n);
            boolean z = Math.abs(monthsUntil2) > 3;
            boolean z2 = monthsUntil2 > 0;
            this.n = edjVar;
            if (z && z2) {
                this.o.scrollToPosition(monthsUntil - 3);
                this.o.post(new dj(this, monthsUntil, 3));
            } else if (z) {
                this.o.scrollToPosition(monthsUntil + 3);
                this.o.post(new dj(this, monthsUntil, 3));
            } else {
                this.o.post(new dj(this, monthsUntil, 3));
            }
        } else {
            this.n = edjVar;
            this.o.scrollToPosition(monthsUntil);
        }
        t(monthsUntil);
    }

    public final void v(fxs fxsVar) {
        this.s = fxsVar;
        if (fxsVar == fxs.YEAR) {
            this.f15219f.getLayoutManager().dh(this.n.year - ((ehd) this.f15219f.getAdapter()).f15538a.j.getStart().year);
            this.k.setVisibility(0);
            this.r.setVisibility(8);
            this.i.setVisibility(8);
            this.l.setVisibility(8);
            return;
        }
        if (fxsVar == fxs.DAY) {
            this.k.setVisibility(8);
            this.r.setVisibility(0);
            this.i.setVisibility(0);
            this.l.setVisibility(0);
            u(this.n);
        }
    }
}
