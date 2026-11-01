package g;

import a.v.ScrollViewWithMaxHeight;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.fxe;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public abstract class cyz extends bvl implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public static boolean f13786c;
    public TextView aa;

    /* renamed from: ab, reason: collision with root package name */
    public TextView f13787ab;
    public TextView ac;
    public TextView ad;
    public TextView ae;
    public TextView af;
    public int ag;
    public View ah;
    public View ai;
    public View aj;
    public long ak = 0;

    /* renamed from: d, reason: collision with root package name */
    public TextView f13788d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f13789e;

    /* renamed from: f, reason: collision with root package name */
    public View f13790f;

    /* renamed from: g, reason: collision with root package name */
    public View f13791g;
    public TextView h;
    public TextView i;
    public TextView j;
    public Activity k;
    public View l;
    public TextView m;
    public View n;
    public TextView o;
    public TextView p;
    public TextView q;
    public fei r;
    public TextView s;
    public TextView t;
    public fjv u;
    public TextView v;
    public View w;
    public boolean x;
    public TextView y;
    public TextView z;

    public static void al(Context context) {
        fxe.a j = atf.g(context).j();
        f13786c = (j != null ? j.fii : fxe.a.NORMAL_VERSION_CODE) != 20200501;
    }

    public abstract boolean am();

    public final void an() {
        Activity activity = getActivity();
        Uri.Builder appendQueryParameter = Uri.parse("https://app.codekk.com/common/privacy_policy").buildUpon().appendQueryParameter(TTDownloadField.TT_PACKAGE_NAME, activity.getPackageName());
        if (erl.ag(activity)) {
            appendQueryParameter.appendQueryParameter("c", "gp");
        }
        dov.d(activity, appendQueryParameter.build().toString(), activity.getString(erl.ag(activity) ? R.string.google_play_privacy_policy : R.string.ag_p), "", "", "");
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        fxe.a j;
        fxe.a j2;
        fxe.a j3;
        int id = view.getId();
        if (id == this.ac.getId()) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.ak >= 500) {
                this.ag = 1;
            } else {
                this.ag++;
            }
            this.ak = currentTimeMillis;
            if (this.ag >= (byh.bc() ? 1 : 8)) {
                this.ag = 1;
                dmb dmbVar = (dmb) this;
                StringBuilder sb = new StringBuilder("channel: ");
                int az = dyd.az(dmbVar.k);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(az);
                sb2.append("(");
                sb2.append(az != 1 ? az != 2 ? "Unknown" : "Google Play" : "China Store");
                sb2.append(")");
                sb.append(sb2.toString());
                sb.append("\n");
                Bundle bundle = new Bundle();
                bundle.putInt("icon", R.mipmap.ic_launcher);
                bundle.putString(abn.EXTRA_TITLE, "Some Info");
                bundle.putString("message", sb.toString());
                kj.t(dmbVar.getActivity(), new hcn(), bundle, false);
                return;
            }
            return;
        }
        if (id == this.n.getId() || id == this.t.getId() || id == this.v.getId()) {
            if (this.r.b()) {
                Activity activity = this.k;
                eyt.ag(activity, activity.getPackageName(), eyt.ax(activity), false);
                return;
            }
            return;
        }
        if (id == this.ah.getId()) {
            if (this.r.b() && (j3 = atf.g(this.k).j()) != null) {
                dov.d(getActivity(), j3.manualUrl, eyt.bk(j3.manualTitle), "", "", "");
                return;
            }
            return;
        }
        if (id == this.w.getId()) {
            if (this.r.b() && (j2 = atf.g(this.k).j()) != null) {
                dov.d(getActivity(), j2.faqUrl, eyt.bk(j2.faqTitle), "", "", "");
                return;
            }
            return;
        }
        if (id == this.f13790f.getId()) {
            if (this.r.b() && (j = atf.g(this.k).j()) != null) {
                dov.d(getActivity(), j.userResearchUrl, eyt.bk(j.userResearchTitle), "", "", "");
                return;
            }
            return;
        }
        if (id == this.l.getId()) {
            if (!this.r.b() || this.u == null) {
                return;
            }
            if (dyd.bi(this.k) || !this.u.isUpdateByDownload()) {
                eyt.ag(this.k, this.u.getPackageName(), eyt.ax(this.k), true);
                return;
            } else {
                dqe.k(getActivity()).n(this.u, true);
                return;
            }
        }
        if (id == this.j.getId() || id == this.ad.getId()) {
            if (this.r.b()) {
                acr.bh(getActivity());
                return;
            }
            return;
        }
        if (id == this.f13789e.getId()) {
            if (this.r.b()) {
                kj.t(getActivity(), new cbo(), new Bundle(), false);
                return;
            }
            return;
        }
        if (id == this.aj.getId()) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", getString(R.string.about_share_content, getString(R.string.about_download_url)));
            intent.setType("text/plain");
            fgj e2 = fgj.e();
            Activity activity2 = this.k;
            e2.f(activity2, Intent.createChooser(intent, activity2.getText(R.string.share)));
            return;
        }
        if (id == this.i.getId()) {
            dov.d(getActivity(), "https://app.codekk.com/common/collected_information?packageName=" + this.k.getPackageName(), getString(R.string.pri_collect_info), "", "", "");
            return;
        }
        if (id == this.ae.getId()) {
            dov.d(getActivity(), "https://app.codekk.com/common/permission_list?packageName=" + this.k.getPackageName(), getString(R.string.pri_permission), "", "", "");
            return;
        }
        if (id == this.z.getId()) {
            fyt.i(this.k);
            return;
        }
        if (id == this.h.getId()) {
            dov.d(getActivity(), "https://app.codekk.com/common/third_party_information_share?packageName=" + this.k.getPackageName(), getString(R.string.third_share_info), "", "", "");
            return;
        }
        if (id == this.y.getId()) {
            dov.d(getActivity(), "https://app.codekk.com/common/third_party_sdk?packageName=" + this.k.getPackageName(), getString(R.string.third_sdk), "", "", "");
            return;
        }
        if (id == this.af.getId()) {
            dov.d(getActivity(), "https://app.codekk.com/common/service_agreement?packageName=" + this.k.getPackageName(), getString(R.string.ag_u_s), "", "", "");
            return;
        }
        if (id == this.aa.getId()) {
            an();
            return;
        }
        if (id != this.f13791g.getId() && id != this.f13788d.getId()) {
            if (id == this.f13787ab.getId()) {
                am();
                return;
            } else {
                if (id == this.m.getId()) {
                    dov.d(getActivity(), "https://beian.miit.gov.cn/", "", "", "", "");
                    return;
                }
                return;
            }
        }
        if (this.r.b()) {
            String ab2 = cux.ab(this.k);
            if (!TextUtils.isEmpty(ab2) && ("zh".equalsIgnoreCase(ab2) || ab2.toLowerCase().indexOf("zh-") == 0)) {
                String string = this.k.getString(R.string.feedback_wechat_id);
                if (!acr.br(this.k)) {
                    gm.h(this.k, R.string.wechat_feedback_tips, string);
                    return;
                } else {
                    fso.ae(this.k, "WeChat ID", string, false);
                    gm.h(this.k, R.string.wechat_feedback_tips, string);
                    return;
                }
            }
            Intent intent2 = new Intent("android.intent.action.SENDTO");
            intent2.setData(Uri.parse("mailto:" + this.k.getString(R.string.feedback_email)));
            Activity activity3 = this.k;
            intent2.putExtra("android.intent.extra.SUBJECT", activity3.getString(R.string.email_feedback_subject, activity3.getString(R.string.app_name)));
            intent2.putExtra("android.intent.extra.TEXT", "");
            Activity activity4 = this.k;
            gm.h(activity4, R.string.email_feedback_tips, activity4.getString(R.string.feedback_email));
            fgj.e().g(this.k, intent2, false, false, true);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        return new Dialog(getActivity(), R.style.AboutPageWindow);
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (getDialog() != null && getDialog().getWindow() != null) {
            getDialog().getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        }
        return layoutInflater.inflate(R.layout.dialog_about, viewGroup, false);
    }

    @Override // g.cqo, android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        super.onStart();
        View view = getView();
        if (view == null) {
            return;
        }
        Dialog dialog = getDialog();
        int i = 2;
        int i2 = 0;
        if (dialog != null && dialog.getWindow() != null) {
            Window window = dialog.getWindow();
            window.setLayout(-1, -1);
            window.clearFlags(2);
            cro.aw(window, false);
            boolean z = afr.e(eyt.bs(R.attr.colorSurface, view)) > 0.5d;
            bli bliVar = new bli(view);
            int i3 = Build.VERSION.SDK_INT;
            ffb egyVar = i3 >= 35 ? new egy(window, bliVar) : i3 >= 30 ? new fqu(window, bliVar) : i3 >= 26 ? new bla(window, bliVar) : i3 >= 23 ? new boy(window, bliVar) : new djy(window, bliVar);
            egyVar.b(z);
            egyVar.a(z);
            bfb bfbVar = new bfb(i2);
            WeakHashMap weakHashMap = goi.f18490c;
            cd.b(view, bfbVar);
            dzc.c(view);
        }
        TextView textView = (TextView) view.findViewById(R.id.desc);
        View findViewById = view.findViewById(R.id.about_description_toggle);
        daa daaVar = new daa(this, textView, findViewById);
        daaVar.run();
        textView.post(new daa(this, findViewById, textView));
        findViewById.setOnClickListener(new aww(this, i2, daaVar));
        View view2 = this.ah;
        fxe.a j = atf.g(this.k).j();
        view2.setVisibility((j == null || !j.isShowManual || TextUtils.isEmpty(j.manualUrl)) ? 8 : 0);
        this.ah.setOnClickListener(this);
        view.findViewById(R.id.author_layout).setOnClickListener(new eom(this, i));
        this.s.setText(R.string.about_overview_faq);
        this.ai.setOnClickListener(new eom(this, 3));
        this.t.setText(R.string.about_rate);
        this.w.setOnClickListener(this);
        this.f13790f.setOnClickListener(this);
        this.l.setOnClickListener(this);
        this.n.setOnClickListener(this);
        this.aj.setOnClickListener(this);
        this.f13791g.setOnClickListener(this);
        this.f13788d.setMovementMethod(null);
        this.f13788d.setOnClickListener(null);
        this.f13788d.setClickable(false);
        this.f13788d.setFocusable(false);
        View findViewById2 = view.findViewById(R.id.about_privacy_entry);
        if (erl.ag(this.k)) {
            ((TextView) view.findViewById(R.id.privacy)).setText(R.string.google_play_privacy_policy);
            findViewById2.setVisibility(0);
            findViewById2.setOnClickListener(new eom(this, 4));
        } else {
            findViewById2.setVisibility(view.findViewById(R.id.ag_layout).getVisibility());
            findViewById2.setOnClickListener(new eom(this, 5));
        }
        int[] iArr = {R.id.about_help_group, R.id.about_support_group, R.id.about_privacy_group};
        for (int i4 = 0; i4 < 3; i4++) {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(iArr[i4]);
            for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
                if (viewGroup.getChildAt(i5) instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(i5);
                    if (viewGroup2.getId() == R.id.rate_layout) {
                        viewGroup2.setContentDescription(((Object) this.t.getText()) + ", " + ((Object) this.v.getText()));
                    } else if (viewGroup2.getId() == R.id.share_layout) {
                        viewGroup2.setContentDescription(((Object) ((TextView) view.findViewById(R.id.share_title)).getText()) + ", " + ((Object) ((TextView) view.findViewById(R.id.share_desc)).getText()));
                    } else if (viewGroup2.getId() == R.id.feedback_layout) {
                        viewGroup2.setContentDescription(((Object) ((TextView) view.findViewById(R.id.feedback_title)).getText()) + ", " + ((Object) this.f13788d.getText()));
                    } else {
                        viewGroup2.setContentDescription(((TextView) viewGroup2.getChildAt(1)).getText());
                    }
                }
            }
        }
        int[] iArr2 = {R.id.about_help_group, R.id.about_support_group, R.id.about_privacy_group};
        for (int i6 = 0; i6 < 3; i6++) {
            ViewGroup viewGroup3 = (ViewGroup) view.findViewById(iArr2[i6]);
            boolean z2 = false;
            for (int i7 = 0; i7 < viewGroup3.getChildCount(); i7++) {
                z2 |= viewGroup3.getChildAt(i7).getVisibility() != 8;
            }
            viewGroup3.setVisibility(z2 ? 0 : 8);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0366 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x024f  */
    @Override // g.bvl, android.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onViewCreated(View view, Bundle bundle) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        String str;
        String ak;
        super.onViewCreated(view, bundle);
        dyd.ao(view);
        this.k = getActivity();
        Toolbar toolbar = (Toolbar) view.findViewById(R.id.about_toolbar);
        toolbar.setNavigationOnClickListener(new eom(this, 0));
        toolbar.setVisibility(getShowsDialog() ? 0 : 8);
        TextView textView = (TextView) view.findViewById(R.id.title);
        this.ac = textView;
        textView.setOnClickListener(this);
        this.n = view.findViewById(R.id.rate_layout);
        this.t = (TextView) view.findViewById(R.id.rate_title);
        this.n.setOnClickListener(this);
        this.v = (TextView) view.findViewById(R.id.rate_desc);
        View findViewById = view.findViewById(R.id.about_features_link);
        this.ah = findViewById;
        if (findViewById != null) {
            findViewById.setVisibility(0);
            this.ah.setOnClickListener(this);
        }
        this.w = view.findViewById(R.id.faq_layout);
        this.s = (TextView) view.findViewById(R.id.faq_title);
        fxe.a j = atf.g(this.k).j();
        String str2 = j != null ? j.faqTitle : null;
        if (!TextUtils.isEmpty(str2)) {
            this.s.setText(str2);
        }
        View view2 = this.w;
        fxe.a j2 = atf.g(this.k).j();
        view2.setVisibility((j2 == null || !j2.isShowFAQ || TextUtils.isEmpty(j2.faqUrl)) ? 8 : 0);
        this.w.setOnClickListener(this);
        this.f13790f = view.findViewById(R.id.research_layout);
        this.q = (TextView) view.findViewById(R.id.research_title);
        fxe.a j3 = atf.g(this.k).j();
        String str3 = j3 != null ? j3.userResearchTitle : null;
        if (!TextUtils.isEmpty(str3)) {
            this.q.setText(str3);
        }
        View view3 = this.f13790f;
        fxe.a j4 = atf.g(this.k).j();
        view3.setVisibility((j4 == null || !j4.isShowUserResearch || TextUtils.isEmpty(j4.userResearchUrl)) ? 8 : 0);
        this.f13790f.setOnClickListener(this);
        View findViewById2 = view.findViewById(R.id.share_layout);
        this.aj = findViewById2;
        findViewById2.setOnClickListener(this);
        this.f13791g = view.findViewById(R.id.feedback_layout);
        TextView textView2 = (TextView) view.findViewById(R.id.feedback_desc);
        this.f13788d = textView2;
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        this.f13788d.setText(Html.fromHtml(getString(R.string.about_feedback_desc)));
        this.f13788d.setOnClickListener(this);
        this.f13791g.setOnClickListener(this);
        TextView textView3 = (TextView) view.findViewById(R.id.author_desc);
        this.f13787ab = textView3;
        textView3.setOnClickListener(this);
        view.findViewById(R.id.author_layout).setOnClickListener(new eom(this, 1));
        View findViewById3 = view.findViewById(R.id.update_layout);
        this.l = findViewById3;
        findViewById3.setOnClickListener(this);
        this.p = (TextView) view.findViewById(R.id.update_title);
        this.o = (TextView) view.findViewById(R.id.update_desc);
        View findViewById4 = view.findViewById(R.id.reward_layout);
        this.ai = findViewById4;
        if (getResources().getBoolean(R.bool.about_reward)) {
            Activity activity = this.k;
            boolean o = atf.g(activity).o();
            if (((activity.getResources().getInteger(R.integer.cchannel) != 2 && activity.getResources().getInteger(R.integer.cchannel) != 3) || !byh.aw(activity, o)) && !dyd.bi(this.k) && !fnp.f()) {
                i = 0;
                findViewById4.setVisibility(i);
                this.ad = (TextView) view.findViewById(R.id.reward_prefix);
                this.j = (TextView) view.findViewById(R.id.reward1);
                TextView textView4 = (TextView) view.findViewById(R.id.reward2);
                this.f13789e = textView4;
                textView4.setVisibility(8);
                this.ad.setOnClickListener(this);
                if (!TextUtils.isEmpty(this.j.getText())) {
                    this.j.setOnClickListener(this);
                }
                if (!TextUtils.isEmpty(this.f13789e.getText())) {
                    this.f13789e.setOnClickListener(this);
                }
                view.findViewById(R.id.ag_layout).setVisibility(!dyd.av(this.k) ? 0 : 8);
                TextView textView5 = (TextView) view.findViewById(R.id.pri_collect_info);
                this.i = textView5;
                textView5.setOnClickListener(this);
                TextView textView6 = (TextView) view.findViewById(R.id.pri_permission);
                this.ae = textView6;
                textView6.setOnClickListener(this);
                TextView textView7 = (TextView) view.findViewById(R.id.pri_permission_man);
                this.z = textView7;
                textView7.setOnClickListener(this);
                TextView textView8 = (TextView) view.findViewById(R.id.third_share_info);
                this.h = textView8;
                textView8.setOnClickListener(this);
                TextView textView9 = (TextView) view.findViewById(R.id.third_sdk);
                this.y = textView9;
                textView9.setOnClickListener(this);
                TextView textView10 = (TextView) view.findViewById(R.id.ag_u_s);
                this.af = textView10;
                textView10.setOnClickListener(this);
                TextView textView11 = (TextView) view.findViewById(R.id.ag_p);
                this.aa = textView11;
                textView11.setOnClickListener(this);
                TextView textView12 = (TextView) view.findViewById(R.id.beian);
                this.m = textView12;
                textView12.setOnClickListener(this);
                if (dyd.av(this.k) && !TextUtils.isEmpty("浙ICP备2022019053号-2A")) {
                    this.m.setVisibility(0);
                    this.m.setText(Html.fromHtml(getString(R.string.beian, "浙ICP备2022019053号-2A")));
                }
                ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) view.findViewById(R.id.content_layout);
                layoutParams = view.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    view.setLayoutParams(layoutParams);
                }
                scrollViewWithMaxHeight.setMaxHeight(he.UNDEFINED_ITEM_ID);
                layoutParams2 = scrollViewWithMaxHeight.getLayoutParams();
                if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
                    layoutParams3.height = 0;
                    layoutParams3.weight = 1.0f;
                    scrollViewWithMaxHeight.setLayoutParams(layoutParams3);
                }
                scrollViewWithMaxHeight.setScrollbarFadingEnabled(false);
                new Handler().postDelayed(new aat(scrollViewWithMaxHeight, 0), 1000L);
                str = eyt.ai(this.k)[0];
                if (!TextUtils.isEmpty(str)) {
                    ((TextView) view.findViewById(R.id.about_version)).setText(str);
                }
                this.n.setVisibility(!f13786c ? 8 : 0);
                ak = cro.ak(this.k, "update_response", null);
                if (!TextUtils.isEmpty(ak)) {
                    try {
                        fjv fjvVar = (fjv) ex.f(fjv.class, ak);
                        this.u = fjvVar;
                        if (fjvVar != null && fjvVar.getVersionCode() > eyt.bj(this.k)) {
                            this.l.setVisibility(0);
                            this.f13791g.setVisibility(8);
                            this.o.setText(this.u.getAttraction() + ".");
                            this.p.append("(" + this.u.getVersion() + ")");
                        }
                    } catch (Exception unused) {
                    }
                }
                if (eyt.ab(this.k, "com.paypal.android.p2pmobile", true)) {
                    this.j.setText(R.string.about_reward_paypal);
                }
                this.r = new fei();
                if (getArguments() == null && getArguments().getBoolean("showa", false)) {
                    dmb dmbVar = (dmb) this;
                    String f2 = fml.f(dmbVar.k);
                    Activity activity2 = dmbVar.k;
                    b(view, f2, activity2.getString(byh.aj(activity2) ? R.string.ad_unit_id_about_c : R.string.ad_unit_id_about_g));
                    return;
                }
            }
        }
        i = 8;
        findViewById4.setVisibility(i);
        this.ad = (TextView) view.findViewById(R.id.reward_prefix);
        this.j = (TextView) view.findViewById(R.id.reward1);
        TextView textView42 = (TextView) view.findViewById(R.id.reward2);
        this.f13789e = textView42;
        textView42.setVisibility(8);
        this.ad.setOnClickListener(this);
        if (!TextUtils.isEmpty(this.j.getText())) {
        }
        if (!TextUtils.isEmpty(this.f13789e.getText())) {
        }
        view.findViewById(R.id.ag_layout).setVisibility(!dyd.av(this.k) ? 0 : 8);
        TextView textView52 = (TextView) view.findViewById(R.id.pri_collect_info);
        this.i = textView52;
        textView52.setOnClickListener(this);
        TextView textView62 = (TextView) view.findViewById(R.id.pri_permission);
        this.ae = textView62;
        textView62.setOnClickListener(this);
        TextView textView72 = (TextView) view.findViewById(R.id.pri_permission_man);
        this.z = textView72;
        textView72.setOnClickListener(this);
        TextView textView82 = (TextView) view.findViewById(R.id.third_share_info);
        this.h = textView82;
        textView82.setOnClickListener(this);
        TextView textView92 = (TextView) view.findViewById(R.id.third_sdk);
        this.y = textView92;
        textView92.setOnClickListener(this);
        TextView textView102 = (TextView) view.findViewById(R.id.ag_u_s);
        this.af = textView102;
        textView102.setOnClickListener(this);
        TextView textView112 = (TextView) view.findViewById(R.id.ag_p);
        this.aa = textView112;
        textView112.setOnClickListener(this);
        TextView textView122 = (TextView) view.findViewById(R.id.beian);
        this.m = textView122;
        textView122.setOnClickListener(this);
        if (dyd.av(this.k)) {
            this.m.setVisibility(0);
            this.m.setText(Html.fromHtml(getString(R.string.beian, "浙ICP备2022019053号-2A")));
        }
        ScrollViewWithMaxHeight scrollViewWithMaxHeight2 = (ScrollViewWithMaxHeight) view.findViewById(R.id.content_layout);
        layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
        }
        scrollViewWithMaxHeight2.setMaxHeight(he.UNDEFINED_ITEM_ID);
        layoutParams2 = scrollViewWithMaxHeight2.getLayoutParams();
        if (layoutParams2 instanceof LinearLayout.LayoutParams) {
        }
        scrollViewWithMaxHeight2.setScrollbarFadingEnabled(false);
        new Handler().postDelayed(new aat(scrollViewWithMaxHeight2, 0), 1000L);
        str = eyt.ai(this.k)[0];
        if (!TextUtils.isEmpty(str)) {
        }
        this.n.setVisibility(!f13786c ? 8 : 0);
        ak = cro.ak(this.k, "update_response", null);
        if (!TextUtils.isEmpty(ak)) {
        }
        if (eyt.ab(this.k, "com.paypal.android.p2pmobile", true)) {
        }
        this.r = new fei();
        if (getArguments() == null) {
        }
    }
}
