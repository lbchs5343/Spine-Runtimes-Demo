package g;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public class bus extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f12241a = 0;

    /* renamed from: b, reason: collision with root package name */
    public View f12242b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12243c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f12244d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f12245e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f12246f;

    /* renamed from: g, reason: collision with root package name */
    public ScrollView f12247g;
    public boolean h;
    public boolean i;
    public TextView j;
    public TextView k;
    public ark l;
    public bro m;
    public Context n;
    public boolean o = true;
    public final cou p = new cou(this, 1);
    public boolean q;
    public View r;

    public static boolean s(Activity activity, Bundle bundle) {
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
        if (activity.getFragmentManager().findFragmentByTag("shizuku_authorization") != null) {
            return true;
        }
        bus busVar = new bus();
        busVar.setArguments(new Bundle(bundle));
        busVar.show(activity.getFragmentManager(), "shizuku_authorization");
        activity.getFragmentManager().executePendingTransactions();
        return true;
    }

    public static void t(bus busVar) {
        ScrollView scrollView = busVar.f12247g;
        if (scrollView == null || scrollView.getWidth() == 0) {
            return;
        }
        View childAt = busVar.f12247g.getChildAt(0);
        childAt.measure(View.MeasureSpec.makeMeasureSpec(busVar.f12247g.getWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(0, 0));
        busVar.f12247g.getLayoutParams().height = Math.min(childAt.getMeasuredHeight(), (int) (busVar.getResources().getDisplayMetrics().heightPixels * 0.65f));
        busVar.f12247g.requestLayout();
    }

    public static boolean u(Context context) {
        return cro.an(context, "shizuku_compatibility_mode_enabled", false);
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.o = false;
        super.onCancel(dialogInterface);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        this.i = bundle != null && bundle.getBoolean("permission_denied");
        Context applicationContext = getActivity().getApplicationContext();
        this.n = applicationContext;
        ark q = ark.q(applicationContext);
        this.l = q;
        CopyOnWriteArraySet copyOnWriteArraySet = q.f10717f;
        cou couVar = this.p;
        copyOnWriteArraySet.add(couVar);
        q.m.post(couVar);
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        gmn z = ckd.z(getActivity());
        View inflate = LayoutInflater.from(((die) z.z).i).inflate(R.layout.dialog_shizuku_authorization, (ViewGroup) null);
        this.f12247g = (ScrollView) inflate;
        this.j = (TextView) inflate.findViewById(R.id.shizuku_guide_body);
        this.k = (TextView) inflate.findViewById(R.id.shizuku_guide_hint);
        this.r = inflate.findViewById(R.id.shizuku_guide_reboot);
        this.f12244d = (TextView) inflate.findViewById(R.id.shizuku_guide_primary);
        this.f12242b = inflate.findViewById(R.id.shizuku_disable);
        this.m = null;
        final int i = 0;
        this.f12244d.setOnClickListener(new View.OnClickListener(this) { // from class: g.crx

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bus f13406b;

            {
                this.f13406b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                tg tgVar;
                int i2 = i;
                bus busVar = this.f13406b;
                switch (i2) {
                    case 0:
                        int i3 = bus.f12241a;
                        busVar.w();
                        bro broVar = busVar.m;
                        if (broVar != null) {
                            if (!busVar.f12246f) {
                                int[] iArr = gtr.f18736b;
                                switch (bja.f11686a[broVar.ordinal()]) {
                                    case 1:
                                        tgVar = tg.INSTALL;
                                        break;
                                    case 2:
                                    case 3:
                                    case 4:
                                        tgVar = tg.OPEN_MANAGER;
                                        break;
                                    case 5:
                                    case 6:
                                        tgVar = tg.REQUEST_PERMISSION;
                                        break;
                                    case 7:
                                        tgVar = tg.USE;
                                        break;
                                    case 8:
                                        tgVar = tg.FINISH;
                                        break;
                                    default:
                                        tgVar = tg.NONE;
                                        break;
                                }
                                int i4 = iArr[tgVar.ordinal()];
                                if (i4 == 1) {
                                    busVar.v();
                                    break;
                                } else if (i4 == 2) {
                                    Intent launchIntentForPackage = busVar.getActivity().getPackageManager().getLaunchIntentForPackage("moe.shizuku.privileged.api");
                                    if (launchIntentForPackage == null || !fgj.e().f(busVar.getActivity(), launchIntentForPackage)) {
                                        gm.e(busVar.getActivity(), R.string.shizuku_open_failed);
                                        break;
                                    }
                                } else if (i4 == 3) {
                                    if (busVar.o && !busVar.h) {
                                        if (!busVar.l.w()) {
                                            busVar.h = true;
                                            busVar.w();
                                            ark arkVar = busVar.l;
                                            arkVar.m.post(new dsf(arkVar, 11, new hbl(busVar)));
                                            break;
                                        } else {
                                            busVar.y();
                                            break;
                                        }
                                    }
                                } else if (i4 == 4) {
                                    busVar.y();
                                    break;
                                } else if (i4 == 5) {
                                    busVar.dismiss();
                                    break;
                                }
                            } else {
                                busVar.v();
                                break;
                            }
                        }
                        break;
                    default:
                        int i5 = bus.f12241a;
                        Activity activity = busVar.getActivity();
                        cro.af(activity, "shizuku_compatibility_mode_enabled", false);
                        ark q = ark.q(activity);
                        q.m.post(new hdk(q, 1));
                        Activity activity2 = busVar.getActivity();
                        int i6 = yb.f20327a;
                        cro.af(activity2, "debug_access_method_chosen", true);
                        yb.m(busVar.getActivity());
                        gm.e(busVar.getActivity(), R.string.shizuku_guide_toast_disabled);
                        busVar.w();
                        break;
                }
            }
        });
        final int i2 = 1;
        this.f12242b.setOnClickListener(new View.OnClickListener(this) { // from class: g.crx

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ bus f13406b;

            {
                this.f13406b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                tg tgVar;
                int i22 = i2;
                bus busVar = this.f13406b;
                switch (i22) {
                    case 0:
                        int i3 = bus.f12241a;
                        busVar.w();
                        bro broVar = busVar.m;
                        if (broVar != null) {
                            if (!busVar.f12246f) {
                                int[] iArr = gtr.f18736b;
                                switch (bja.f11686a[broVar.ordinal()]) {
                                    case 1:
                                        tgVar = tg.INSTALL;
                                        break;
                                    case 2:
                                    case 3:
                                    case 4:
                                        tgVar = tg.OPEN_MANAGER;
                                        break;
                                    case 5:
                                    case 6:
                                        tgVar = tg.REQUEST_PERMISSION;
                                        break;
                                    case 7:
                                        tgVar = tg.USE;
                                        break;
                                    case 8:
                                        tgVar = tg.FINISH;
                                        break;
                                    default:
                                        tgVar = tg.NONE;
                                        break;
                                }
                                int i4 = iArr[tgVar.ordinal()];
                                if (i4 == 1) {
                                    busVar.v();
                                    break;
                                } else if (i4 == 2) {
                                    Intent launchIntentForPackage = busVar.getActivity().getPackageManager().getLaunchIntentForPackage("moe.shizuku.privileged.api");
                                    if (launchIntentForPackage == null || !fgj.e().f(busVar.getActivity(), launchIntentForPackage)) {
                                        gm.e(busVar.getActivity(), R.string.shizuku_open_failed);
                                        break;
                                    }
                                } else if (i4 == 3) {
                                    if (busVar.o && !busVar.h) {
                                        if (!busVar.l.w()) {
                                            busVar.h = true;
                                            busVar.w();
                                            ark arkVar = busVar.l;
                                            arkVar.m.post(new dsf(arkVar, 11, new hbl(busVar)));
                                            break;
                                        } else {
                                            busVar.y();
                                            break;
                                        }
                                    }
                                } else if (i4 == 4) {
                                    busVar.y();
                                    break;
                                } else if (i4 == 5) {
                                    busVar.dismiss();
                                    break;
                                }
                            } else {
                                busVar.v();
                                break;
                            }
                        }
                        break;
                    default:
                        int i5 = bus.f12241a;
                        Activity activity = busVar.getActivity();
                        cro.af(activity, "shizuku_compatibility_mode_enabled", false);
                        ark q = ark.q(activity);
                        q.m.post(new hdk(q, 1));
                        Activity activity2 = busVar.getActivity();
                        int i6 = yb.f20327a;
                        cro.af(activity2, "debug_access_method_chosen", true);
                        yb.m(busVar.getActivity());
                        gm.e(busVar.getActivity(), R.string.shizuku_guide_toast_disabled);
                        busVar.w();
                        break;
                }
            }
        });
        w();
        z.p(R.string.shizuku_authorization_title);
        z.v(inflate);
        return z.r();
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        this.o = false;
        ark arkVar = this.l;
        if (arkVar != null) {
            arkVar.f10717f.remove(this.p);
        }
        super.onDestroy();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        this.j = null;
        this.k = null;
        this.r = null;
        this.f12244d = null;
        this.f12242b = null;
        this.f12247g = null;
        super.onDestroyView();
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Activity activity = getActivity();
        if (activity == null || !activity.isChangingConfigurations()) {
            this.o = false;
        }
        super.onDismiss(dialogInterface);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        w();
        if (this.f12245e) {
            x();
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("permission_denied", this.i);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        super.onStart();
        ckd.al(getDialog());
        this.f12247g.post(new cou(this, 0));
    }

    public final void v() {
        if (fgj.e().f(getActivity(), new Intent("android.intent.action.VIEW", Uri.parse("https://shizuku.rikka.app/download/")))) {
            return;
        }
        gm.e(getActivity(), R.string.shizuku_open_failed);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0118 A[PHI: r4 r5
      0x0118: PHI (r4v21 int) = (r4v8 int), (r4v9 int), (r4v11 int), (r4v13 int), (r4v14 int), (r4v22 int) binds: [B:58:0x010f, B:101:0x0155, B:98:0x0141, B:96:0x0130, B:94:0x012c, B:59:0x0112] A[DONT_GENERATE, DONT_INLINE]
      0x0118: PHI (r5v21 int) = (r5v6 int), (r5v7 int), (r5v9 int), (r5v11 int), (r5v13 int), (r5v22 int) binds: [B:58:0x010f, B:101:0x0155, B:98:0x0141, B:96:0x0130, B:94:0x012c, B:59:0x0112] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void w() {
        boolean z;
        boolean z2;
        bro broVar;
        boolean z3;
        int i;
        int i2;
        boolean z4;
        tg tgVar;
        ScrollView scrollView;
        boolean z5;
        if (this.l == null || this.j == null || getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed()) {
            return;
        }
        try {
            getActivity().getPackageManager().getPackageInfo("moe.shizuku.privileged.api", 0);
            z = true;
        } catch (PackageManager.NameNotFoundException unused) {
            z = false;
        }
        boolean r = this.l.r();
        boolean w = this.l.w();
        boolean u = u(getActivity());
        if (w || !r) {
            this.i = false;
        }
        boolean z6 = Build.VERSION.SDK_INT >= 26;
        boolean z7 = this.h || !this.l.h.isEmpty();
        if (!this.i) {
            ark arkVar = this.l;
            if (arkVar.r() && !arkVar.w()) {
                try {
                    z5 = gwn.s();
                } catch (RuntimeException unused2) {
                }
                if (!z5) {
                    z2 = false;
                    broVar = z6 ? bro.UNSUPPORTED : !z ? bro.INSTALL : !r ? u ? bro.RESTORE_SERVICE : bro.START : !w ? z7 ? bro.REQUESTING : z2 ? bro.DENIED : u ? bro.RESTORE_PERMISSION : bro.AUTHORIZE : (u && this.l.f10714c) ? bro.CONNECTING : bro.READY;
                    z3 = !z && this.l.x();
                    if (this.q) {
                        broVar = bro.CONNECTING;
                    }
                    this.f12242b.setVisibility(!u ? 0 : 8);
                    this.f12242b.setEnabled(!this.q);
                    if (broVar != this.m && z3 == this.f12246f && this.f12243c == this.q) {
                        return;
                    }
                    this.f12243c = this.q;
                    this.m = broVar;
                    this.f12246f = z3;
                    i = gtr.f18735a[broVar.ordinal()];
                    int i3 = R.string.shizuku_guide_action_authorize;
                    int i4 = R.string.shizuku_guide_body_authorize;
                    switch (i) {
                        case 1:
                            i4 = R.string.shizuku_guide_body_install;
                            i3 = R.string.shizuku_guide_action_install;
                            i2 = 0;
                            z4 = false;
                            break;
                        case 2:
                        case 3:
                            i4 = R.string.shizuku_guide_body_start;
                            i3 = R.string.shizuku_guide_action_manager;
                            i2 = 0;
                            z4 = true;
                            break;
                        case 4:
                            i2 = 0;
                            z4 = false;
                            break;
                        case 5:
                            i2 = R.string.shizuku_guide_hint_restore_permission;
                            z4 = false;
                            break;
                        case 6:
                            i4 = R.string.shizuku_guide_body_denied;
                            i3 = R.string.shizuku_guide_action_manager_permission;
                            i2 = 0;
                            z4 = false;
                            break;
                        case 7:
                            i4 = R.string.shizuku_guide_body_use;
                            i2 = R.string.shizuku_accessibility_hint;
                            i3 = R.string.shizuku_guide_action_use;
                            z4 = false;
                            break;
                        case 8:
                            i4 = R.string.shizuku_guide_body_requesting;
                            i3 = R.string.shizuku_guide_action_requesting;
                            i2 = 0;
                            z4 = false;
                            break;
                        case 9:
                            i4 = this.q ? R.string.shizuku_accessibility_enabling : R.string.shizuku_guide_body_connecting;
                            i3 = R.string.shizuku_guide_action_connecting;
                            i2 = 0;
                            z4 = false;
                            break;
                        default:
                            i4 = R.string.shizuku_guide_body_unsupported;
                            i3 = R.string.shizuku_guide_action_back;
                            i2 = 0;
                            z4 = false;
                            break;
                    }
                    if (this.f12246f) {
                        i4 = R.string.shizuku_guide_body_update;
                        i2 = R.string.shizuku_guide_hint_update;
                        i3 = R.string.shizuku_guide_action_update;
                        z4 = false;
                    }
                    this.j.setText(i4);
                    this.k.setVisibility(i2 != 0 ? 8 : 0);
                    if (i2 != 0) {
                        this.k.setText(i2);
                    }
                    this.r.setVisibility(z4 ? 0 : 8);
                    this.f12244d.setText(i3);
                    TextView textView = this.f12244d;
                    switch (bja.f11686a[broVar.ordinal()]) {
                        case 1:
                            tgVar = tg.INSTALL;
                            break;
                        case 2:
                        case 3:
                        case 4:
                            tgVar = tg.OPEN_MANAGER;
                            break;
                        case 5:
                        case 6:
                            tgVar = tg.REQUEST_PERMISSION;
                            break;
                        case 7:
                            tgVar = tg.USE;
                            break;
                        case 8:
                            tgVar = tg.FINISH;
                            break;
                        default:
                            tgVar = tg.NONE;
                            break;
                    }
                    textView.setEnabled(tgVar != tg.NONE);
                    scrollView = this.f12247g;
                    if (scrollView == null) {
                        scrollView.post(new cou(this, 0));
                        return;
                    }
                    return;
                }
            }
            z5 = false;
            if (!z5) {
            }
        }
        z2 = true;
        if (z6) {
        }
        if (z) {
        }
        if (this.q) {
        }
        this.f12242b.setVisibility(!u ? 0 : 8);
        this.f12242b.setEnabled(!this.q);
        if (broVar != this.m) {
        }
        this.f12243c = this.q;
        this.m = broVar;
        this.f12246f = z3;
        i = gtr.f18735a[broVar.ordinal()];
        int i32 = R.string.shizuku_guide_action_authorize;
        int i42 = R.string.shizuku_guide_body_authorize;
        switch (i) {
        }
        if (this.f12246f) {
        }
        this.j.setText(i42);
        this.k.setVisibility(i2 != 0 ? 8 : 0);
        if (i2 != 0) {
        }
        this.r.setVisibility(z4 ? 0 : 8);
        this.f12244d.setText(i32);
        TextView textView2 = this.f12244d;
        switch (bja.f11686a[broVar.ordinal()]) {
        }
        textView2.setEnabled(tgVar != tg.NONE);
        scrollView = this.f12247g;
        if (scrollView == null) {
        }
    }

    public final void x() {
        boolean isStateSaved;
        Activity activity = getActivity();
        if (!this.o || !this.f12245e || !isResumed() || activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            isStateSaved = activity.getFragmentManager().isStateSaved();
            if (isStateSaved) {
                return;
            }
        }
        this.f12245e = false;
        this.o = false;
        cro.af(activity, "shizuku_compatibility_mode_enabled", true);
        cro.af(activity, "debug_access_method_chosen", true);
        yb.m(activity);
        Bundle arguments = getArguments();
        dismiss();
        yb.k(activity, arguments);
    }

    public final void y() {
        if (!this.o || this.q) {
            return;
        }
        this.q = true;
        w();
        ark arkVar = this.l;
        arkVar.m.post(new dsf(arkVar, 10, new csg(0, this)));
    }
}
