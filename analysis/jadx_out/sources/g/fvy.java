package g;

import a.v.ScrollViewWithMaxHeight;
import android.app.Activity;
import android.app.Dialog;
import android.content.ComponentCallbacks2;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class fvy extends cqo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public Activity f17495a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f17496b;

    /* renamed from: c, reason: collision with root package name */
    public fei f17497c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f17498d;

    /* renamed from: g, reason: collision with root package name */
    public TextView f17501g;
    public TextView h;
    public ImageView i;
    public String j;
    public TextView k;
    public TextView l;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17500f = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17499e = true;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f17497c.b()) {
            int id = view.getId();
            cgm cgmVar = null;
            if (id == this.l.getId() && !TextUtils.isEmpty(this.j)) {
                ComponentCallbacks2 activity = getActivity();
                if (activity != null && (activity instanceof cgm)) {
                    cgmVar = (cgm) activity;
                }
                if (cgmVar == null) {
                    gm.i(this.f17495a, R.string.payable_is_null, 1);
                    erl.ai("p able is null in DVDialogFragment", new NullPointerException());
                    return;
                } else {
                    cgmVar.g();
                    dzm.ao(this.f17495a, "tt_2_cf_gp");
                    return;
                }
            }
            if (id == this.h.getId()) {
                kj.t(getActivity(), new ajf(), null, true);
                dzm.ao(this.f17495a, "tt_2_cf_al");
                return;
            }
            if (id == this.f17501g.getId()) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse("https://app.codekk.com/common/membership_agreement?packageName=" + this.f17495a.getPackageName()));
                    startActivity(intent);
                    return;
                } catch (Exception unused) {
                    gm.d(this.f17495a, "无法打开链接", 0);
                    return;
                }
            }
            if (id == this.f17496b.getId()) {
                if (!this.f17499e) {
                    dzm.ao(this.f17495a, "tt_2_cft_e");
                    ComponentCallbacks2 activity2 = getActivity();
                    if (activity2 != null && (activity2 instanceof cgm)) {
                        cgmVar = (cgm) activity2;
                    }
                    if (cgmVar == null) {
                        gm.i(this.f17495a, R.string.payable_is_null, 1);
                        erl.ai("p able is null in DVDialogFragment", new NullPointerException());
                        return;
                    } else {
                        cgmVar.f();
                        dismiss();
                        return;
                    }
                }
                dzm.ao(this.f17495a, "tt_2_2_cft_d");
                Activity activity3 = this.f17495a;
                String string = activity3.getString(R.string.donation_version_trial_exceed_tips);
                String charSequence = this.l.getText().toString();
                fgw fgwVar = new fgw(2, this);
                String string2 = this.f17495a.getString(R.string.alert_dialog_cancel);
                efa efaVar = new efa(0);
                gmn z = ckd.z(activity3);
                die dieVar = (die) z.z;
                dieVar.f14221f = "";
                dieVar.m = string;
                dieVar.x = charSequence;
                dieVar.f14216a = fgwVar;
                dieVar.q = string2;
                dieVar.s = efaVar;
                fpl r = z.r();
                r.requestWindowFeature(1);
                eyt.ay(activity3, r);
                Button l = r.l(-1);
                if (l != null) {
                    l.setAllCaps(false);
                }
                Button l2 = r.l(-2);
                if (l2 == null) {
                    return;
                }
                l2.setAllCaps(false);
            }
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        return ckd.o(getActivity());
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.cloneInContext(getDialog().getContext()).inflate(R.layout.dialog_donation_version, viewGroup, false);
    }

    @Override // g.cqo, android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        super.onStart();
        if (getDialog() != null) {
            ckd.al(getDialog());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0159  */
    @Override // android.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onViewCreated(View view, Bundle bundle) {
        double d2;
        double d3;
        String str;
        super.onViewCreated(view, bundle);
        this.f17495a = getActivity();
        this.i = (ImageView) view.findViewById(R.id.icon);
        this.k = (TextView) view.findViewById(R.id.name);
        this.f17498d = (TextView) view.findViewById(R.id.desc);
        TextView textView = (TextView) view.findViewById(R.id.membership_agreement);
        this.f17501g = textView;
        textView.setOnClickListener(this);
        this.f17501g.setVisibility(dyd.av(this.f17495a) ? 0 : 8);
        TextView textView2 = (TextView) view.findViewById(R.id.use_alipay);
        this.h = textView2;
        textView2.setOnClickListener(this);
        TextView textView3 = (TextView) view.findViewById(R.id.purchase);
        this.l = textView3;
        textView3.setOnClickListener(this);
        TextView textView4 = (TextView) view.findViewById(R.id.t);
        this.f17496b = textView4;
        textView4.setOnClickListener(this);
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) view.findViewById(R.id.desc_layout);
        int[] ag = fso.ag(this.f17495a);
        int i = ag[0];
        int i2 = ag[1];
        if (i > i2) {
            d2 = i2;
            d3 = 3.5d;
        } else {
            d2 = i2;
            d3 = 5.5d;
        }
        scrollViewWithMaxHeight.setMaxHeight((int) ((d2 * d3) / 9.0d));
        scrollViewWithMaxHeight.setVerticalScrollBarEnabled(true);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.j = arguments.getString("donation_package_name");
            String string = arguments.getString("donation_app_name");
            if (!TextUtils.isEmpty(string)) {
                this.k.setText(string);
            }
            this.i.setImageResource(arguments.getInt("donation_icon_url"));
            String string2 = arguments.getString("donation_desc");
            if (!TextUtils.isEmpty(string2)) {
                this.f17498d.setText(string2);
            }
            str = arguments.getString("promotion_rate");
            arguments.getInt("tc", 0);
            this.f17500f = arguments.getBoolean("at", false);
            this.f17499e = arguments.getBoolean("tuu", true);
            this.f17496b.setVisibility(this.f17500f ? 0 : 8);
            if (this.f17499e) {
                TextView textView5 = this.f17496b;
                textView5.setTextColor(eyt.bs(R.attr.colorOnSurfaceVariant, textView5));
            }
        } else {
            str = null;
        }
        if (!dyd.bi(this.f17495a) || cro.av(this.f17495a, -1, "channel_run_on_wind") == 67887) {
            Activity activity = this.f17495a;
            if (eyt.ab(activity, "com.android.vending", true) && eyt.ab(activity, "com.google.android.gms", true)) {
                this.h.setVisibility(0);
                this.l.setText(R.string.pay_with_googleplay);
                if (!TextUtils.isEmpty(str)) {
                    if (this.h.getVisibility() == 0) {
                        this.h.append("(" + str + ")");
                    }
                    this.l.append("(" + str + ")");
                }
                this.f17497c = new fei();
            }
        }
        this.i.setOnLongClickListener(new hcs(1, this));
        if (!TextUtils.isEmpty(str)) {
        }
        this.f17497c = new fei();
    }
}
