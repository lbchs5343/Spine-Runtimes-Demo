package g;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.google.android.material.card.MaterialCardView;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public class yb extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f20327a = 0;

    /* renamed from: c, reason: collision with root package name */
    public MaterialCardView f20329c;

    /* renamed from: d, reason: collision with root package name */
    public fpl f20330d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f20331e;

    /* renamed from: g, reason: collision with root package name */
    public MaterialCardView f20333g;
    public ark h;

    /* renamed from: f, reason: collision with root package name */
    public int f20332f = -1;

    /* renamed from: b, reason: collision with root package name */
    public final fvi f20328b = new fvi(11, this);

    public static boolean i(Activity activity, Bundle bundle) {
        boolean isStateSaved;
        if (activity.isFinishing() || activity.isDestroyed()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            isStateSaved = activity.getFragmentManager().isStateSaved();
            if (isStateSaved) {
                return false;
            }
        }
        if (activity.getFragmentManager().findFragmentByTag("debug_access_choice") != null) {
            return true;
        }
        yb ybVar = new yb();
        ybVar.setArguments(bundle);
        ybVar.show(activity.getFragmentManager(), "debug_access_choice");
        activity.getFragmentManager().executePendingTransactions();
        return true;
    }

    public static boolean j(Activity activity, Intent intent, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("target", new Intent(intent));
        bundle.putBoolean("recreate", z);
        return l(activity, bundle);
    }

    public static void k(Activity activity, Bundle bundle) {
        hdb hdbVar;
        if (bundle == null || bundle.getBoolean("settings")) {
            return;
        }
        if (bundle.getBoolean("recreate")) {
            activity.recreate();
            return;
        }
        Intent intent = (Intent) bundle.getParcelable("target");
        String string = bundle.getString("tool");
        if (intent != null) {
            intent.setExtrasClassLoader(activity.getClassLoader());
            cgg aj = cro.aj(intent);
            fgj.e().g(activity, intent, true, false, aj == null || !aj.isTrial());
        } else if (string != null) {
            ert ae = acr.ae(activity, string);
            if (ae == null || (hdbVar = ae.r) == null) {
                gm.e(activity, R.string.start_activity_failed);
            } else {
                hdbVar._bz(activity, ae);
            }
        }
    }

    public static boolean l(Activity activity, Bundle bundle) {
        if (!activity.isFinishing() && !activity.isDestroyed()) {
            if (activity.getFragmentManager().findFragmentByTag("debug_access_choice") != null || activity.getFragmentManager().findFragmentByTag("shizuku_authorization") != null) {
                return true;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                boolean z = i >= 26;
                boolean z2 = byh.k && byh.f12447f;
                boolean z3 = activity.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("debug_access_method_chosen", false);
                boolean z4 = activity.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("shizuku_compatibility_mode_enabled", false);
                if (z && z2 && !z3 && !z4) {
                    try {
                        ApplicationInfo applicationInfo = fl.c(activity.getPackageManager()).applicationInfo;
                        if (applicationInfo != null) {
                            if (applicationInfo.enabled) {
                                return i(activity, bundle);
                            }
                        }
                    } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void m(Activity activity) {
        if (activity instanceof erp) {
            ((c.e.a) ((erp) activity)).n();
        }
    }

    public final void n() {
        p(this.f20333g, R.id.debug_access_shizuku_radio, this.f20332f == 1);
        p(this.f20329c, R.id.debug_access_accessibility_radio, this.f20332f == 0);
        TextView textView = this.f20331e;
        if (textView != null) {
            int i = this.f20332f;
            textView.setEnabled(i == 0 || i == 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void o() {
        boolean z;
        boolean ab2;
        ApplicationInfo applicationInfo;
        if (this.f20333g == null || this.f20329c == null || getActivity() == null) {
            return;
        }
        try {
            applicationInfo = getActivity().getPackageManager().getPackageInfo("moe.shizuku.privileged.api", 0).applicationInfo;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (applicationInfo != null) {
            if (applicationInfo.enabled) {
                z = true;
                alr alrVar = z ? alr.INSTALL : this.h.x() ? alr.UPDATE : !this.h.r() ? alr.START : this.h.w() ? alr.AUTHORIZED : alr.AUTHORIZE;
                int i = epb.f15930a[alrVar.ordinal()];
                int i2 = R.string.debug_access_choice_ready;
                int i3 = i == 1 ? i != 2 ? i != 3 ? i != 4 ? R.string.debug_access_choice_needs_authorization : R.string.debug_access_choice_ready : R.string.debug_access_choice_needs_update : R.string.debug_access_choice_needs_start : R.string.debug_access_choice_needs_install;
                TextView textView = (TextView) this.f20333g.findViewById(R.id.debug_access_shizuku_status);
                boolean z2 = alrVar == alr.AUTHORIZED;
                textView.setText(i3);
                textView.setActivated(z2);
                ab2 = this.h.ab();
                TextView textView2 = (TextView) this.f20329c.findViewById(R.id.debug_access_accessibility_status);
                if (!ab2) {
                    i2 = R.string.debug_access_choice_needs_authorization;
                }
                textView2.setText(i2);
                textView2.setActivated(ab2);
                n();
            }
        }
        z = false;
        if (z) {
        }
        int i4 = epb.f15930a[alrVar.ordinal()];
        int i22 = R.string.debug_access_choice_ready;
        if (i4 == 1) {
        }
        TextView textView3 = (TextView) this.f20333g.findViewById(R.id.debug_access_shizuku_status);
        if (alrVar == alr.AUTHORIZED) {
        }
        textView3.setText(i3);
        textView3.setActivated(z2);
        ab2 = this.h.ab();
        TextView textView22 = (TextView) this.f20329c.findViewById(R.id.debug_access_accessibility_status);
        if (!ab2) {
        }
        textView22.setText(i22);
        textView22.setActivated(ab2);
        n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        boolean z = getArguments().getBoolean("settings");
        this.h = ark.q(getActivity());
        boolean u = bus.u(getActivity());
        boolean w = this.h.w();
        boolean ab2 = this.h.ab();
        final int i = 1;
        int i2 = u;
        if (!z) {
            i2 = (u != 0 || w) ? 1 : !ab2;
        }
        int i3 = bundle != null ? bundle.getInt("selection", i2) : i2;
        this.f20332f = i3;
        if (i3 != 0 && i3 != 1) {
            this.f20332f = i2;
        }
        gmn z2 = ckd.z(getActivity());
        View inflate = LayoutInflater.from(((die) z2.z).i).inflate(R.layout.dialog_debug_access_choice, (ViewGroup) null);
        this.f20333g = (MaterialCardView) inflate.findViewById(R.id.debug_access_shizuku_row);
        this.f20329c = (MaterialCardView) inflate.findViewById(R.id.debug_access_accessibility_row);
        TextView textView = (TextView) inflate.findViewById(R.id.debug_access_confirm);
        this.f20331e = textView;
        textView.setText(z ? android.R.string.ok : R.string.debug_access_choice_continue);
        final int i4 = 0;
        this.f20331e.setOnClickListener(new View.OnClickListener(this) { // from class: g.cvx

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ yb f13612b;

            {
                this.f13612b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = i4;
                yb ybVar = this.f13612b;
                switch (i5) {
                    case 0:
                        boolean z3 = ybVar.f20332f == 1;
                        Activity activity = ybVar.getActivity();
                        if (activity != null && !activity.isFinishing()) {
                            Bundle bundle2 = new Bundle(ybVar.getArguments());
                            ybVar.dismiss();
                            activity.getFragmentManager().executePendingTransactions();
                            if (!z3) {
                                int i6 = bus.f12241a;
                                cro.af(activity, "shizuku_compatibility_mode_enabled", false);
                                ark q = ark.q(activity);
                                q.m.post(new hdk(q, 1));
                                cro.af(activity, "debug_access_method_chosen", true);
                                yb.m(activity);
                                if (!bundle2.getBoolean("settings")) {
                                    gm.c(activity, R.string.debug_access_choice_later);
                                }
                                yb.k(activity, bundle2);
                                break;
                            } else {
                                ark q2 = ark.q(activity);
                                if (!q2.w() || q2.x() || !q2.ab()) {
                                    bus.s(activity, bundle2);
                                    break;
                                } else {
                                    cro.af(activity, "shizuku_compatibility_mode_enabled", true);
                                    cro.af(activity, "debug_access_method_chosen", true);
                                    yb.m(activity);
                                    yb.k(activity, bundle2);
                                    break;
                                }
                            }
                        }
                        break;
                    default:
                        ybVar.f20330d.cancel();
                        break;
                }
            }
        });
        final int i5 = 1;
        inflate.findViewById(R.id.debug_access_cancel).setOnClickListener(new View.OnClickListener(this) { // from class: g.cvx

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ yb f13612b;

            {
                this.f13612b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i52 = i5;
                yb ybVar = this.f13612b;
                switch (i52) {
                    case 0:
                        boolean z3 = ybVar.f20332f == 1;
                        Activity activity = ybVar.getActivity();
                        if (activity != null && !activity.isFinishing()) {
                            Bundle bundle2 = new Bundle(ybVar.getArguments());
                            ybVar.dismiss();
                            activity.getFragmentManager().executePendingTransactions();
                            if (!z3) {
                                int i6 = bus.f12241a;
                                cro.af(activity, "shizuku_compatibility_mode_enabled", false);
                                ark q = ark.q(activity);
                                q.m.post(new hdk(q, 1));
                                cro.af(activity, "debug_access_method_chosen", true);
                                yb.m(activity);
                                if (!bundle2.getBoolean("settings")) {
                                    gm.c(activity, R.string.debug_access_choice_later);
                                }
                                yb.k(activity, bundle2);
                                break;
                            } else {
                                ark q2 = ark.q(activity);
                                if (!q2.w() || q2.x() || !q2.ab()) {
                                    bus.s(activity, bundle2);
                                    break;
                                } else {
                                    cro.af(activity, "shizuku_compatibility_mode_enabled", true);
                                    cro.af(activity, "debug_access_method_chosen", true);
                                    yb.m(activity);
                                    yb.k(activity, bundle2);
                                    break;
                                }
                            }
                        }
                        break;
                    default:
                        ybVar.f20330d.cancel();
                        break;
                }
            }
        });
        MaterialCardView materialCardView = this.f20333g;
        RadioButton radioButton = (RadioButton) inflate.findViewById(R.id.debug_access_shizuku_radio);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: g.cjy
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i6 = i;
                yb ybVar = yb.this;
                ybVar.f20332f = i6;
                ybVar.n();
            }
        };
        materialCardView.setOnClickListener(onClickListener);
        radioButton.setOnClickListener(onClickListener);
        materialCardView.setAccessibilityDelegate(new bbe(this, 1));
        MaterialCardView materialCardView2 = this.f20329c;
        RadioButton radioButton2 = (RadioButton) inflate.findViewById(R.id.debug_access_accessibility_radio);
        final int i6 = 0;
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: g.cjy
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i62 = i6;
                yb ybVar = yb.this;
                ybVar.f20332f = i62;
                ybVar.n();
            }
        };
        materialCardView2.setOnClickListener(onClickListener2);
        radioButton2.setOnClickListener(onClickListener2);
        materialCardView2.setAccessibilityDelegate(new bbe(this, 0));
        z2.p(R.string.debug_access_choice_title);
        z2.v(inflate);
        this.f20330d = z2.r();
        o();
        ark arkVar = this.h;
        CopyOnWriteArraySet copyOnWriteArraySet = arkVar.f10717f;
        fvi fviVar = this.f20328b;
        copyOnWriteArraySet.add(fviVar);
        arkVar.m.post(fviVar);
        return this.f20330d;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onDestroyView() {
        ark arkVar = this.h;
        if (arkVar != null) {
            arkVar.f10717f.remove(this.f20328b);
        }
        this.f20331e = null;
        this.f20333g = null;
        this.f20329c = null;
        this.f20330d = null;
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        o();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("selection", this.f20332f);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        super.onStart();
        ckd.al(getDialog());
    }

    public final void p(MaterialCardView materialCardView, int i, boolean z) {
        ((RadioButton) materialCardView.findViewById(i)).setChecked(z);
        materialCardView.setSelected(z);
        materialCardView.setContentDescription(getString(R.string.debug_access_choice_option_description, ((TextView) materialCardView.findViewById(i == R.id.debug_access_shizuku_radio ? R.id.debug_access_shizuku_title : R.id.debug_access_accessibility_title)).getText(), getString(R.string.debug_access_choice_option_description, ((TextView) materialCardView.findViewById(i == R.id.debug_access_shizuku_radio ? R.id.debug_access_shizuku_summary : R.id.debug_access_accessibility_summary)).getText(), ((TextView) materialCardView.findViewById(i == R.id.debug_access_shizuku_radio ? R.id.debug_access_shizuku_status : R.id.debug_access_accessibility_status)).getText())));
    }
}
