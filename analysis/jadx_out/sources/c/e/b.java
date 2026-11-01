package c.e;

import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import cn.trinea.android.developertools.R;
import g.byh;
import g.cms;
import g.cro;
import g.fml;
import g.gm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class b extends cms {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f391d = 0;

    /* renamed from: e, reason: collision with root package name */
    public TextView f392e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f393f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f394g;
    public View h;
    public b i;
    public View j;
    public TextView k;

    public static List l(b bVar, boolean z) {
        String ak = cro.ak(bVar, "op_update_noti_mode", null);
        List be = byh.be(bVar, TextUtils.isEmpty(ak) ? null : new ArrayList(Arrays.asList(ak.split(","))));
        if (be == null) {
            be = new ArrayList();
        }
        if (be.size() == 0) {
            be.add("bar");
            be.add("inapp");
            be.add("desk");
            if (z) {
                byh.ay(bVar, "op_update_noti_mode", TextUtils.join(",", be));
            }
        }
        return be;
    }

    public final void m(String str, boolean z, SwitchCompat switchCompat, SwitchCompat switchCompat2, SwitchCompat switchCompat3) {
        if (z) {
            b bVar = this.i;
            List be = byh.be(bVar, null);
            if (be == null) {
                be = new ArrayList();
            }
            if (!be.contains(str)) {
                be.add(str);
                byh.ay(bVar, "op_update_noti_mode", TextUtils.join(",", be));
            }
            c.b.b.l(this.i, "c.t.d.o.p.u.t");
            return;
        }
        if (l(this.i, false).size() > 1) {
            byh.p(this.i, str);
            c.b.b.l(this.i, "c.t.d.o.p.u.t");
            return;
        }
        if (str.equals("bar")) {
            switchCompat.setChecked(true);
        } else if (str.equals("inapp")) {
            switchCompat2.setChecked(true);
        } else if (str.equals("desk")) {
            switchCompat3.setChecked(true);
        }
        gm.f(this.i, R.string.at_least_one_choice);
    }

    public final void n() {
        boolean v = c.b.b.v(this.i);
        this.h.setEnabled(v);
        this.h.setAlpha(v ? 1.0f : 0.38f);
        String[] strArr = {getString(R.string.op_update_noti_period_normal_work), getString(R.string.op_update_noti_period_more_work), getString(R.string.op_update_noti_period_all)};
        View view = this.h;
        TextView textView = this.k;
        TextView textView2 = this.f392e;
        b bVar = this.i;
        int av = byh.av(bVar, cro.av(bVar, 1, "op_update_noti_period"), "op_update_noti_period");
        String str = strArr[av == 2 ? (char) 1 : av == 3 ? (char) 2 : (char) 0];
        textView2.setText(str);
        view.setContentDescription(getString(R.string.setting_value_content_description, textView.getText(), str));
    }

    public final void o() {
        char c2;
        boolean v = c.b.b.v(this.i);
        this.j.setEnabled(v);
        this.j.setAlpha(v ? 1.0f : 0.38f);
        String[] strArr = {getString(R.string.op_update_freq_hour), getString(R.string.op_update_freq_day), getString(R.string.op_update_freq_week), getString(R.string.op_update_freq_month)};
        View view = this.j;
        TextView textView = this.f393f;
        TextView textView2 = this.f394g;
        b bVar = this.i;
        int av = byh.av(bVar, cro.av(bVar, 2, "op_update_freq"), "op_update_freq");
        if (av == 1) {
            c2 = 0;
        } else {
            c2 = 3;
            if (av == 3) {
                c2 = 2;
            } else if (av != 4) {
                c2 = 1;
            }
        }
        String str = strArr[c2];
        textView2.setText(str);
        view.setContentDescription(getString(R.string.setting_value_content_description, textView.getText(), str));
    }

    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_setting_open_project);
        this.i = this;
        final SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.op_update_check_switch);
        switchCompat.setChecked(c.b.b.v(this.i));
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: g.gah
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                int i = c.e.b.f391d;
                int i2 = 1;
                c.e.b bVar = c.e.b.this;
                SwitchCompat switchCompat2 = switchCompat;
                if (z) {
                    if (eyt.am(bVar, "android.permission.POST_NOTIFICATIONS") != 0) {
                        fyt.c(bVar, new String[]{"android.permission.POST_NOTIFICATIONS"}, new fcd[]{new dkj(bVar, z, switchCompat2)});
                        return;
                    } else {
                        bVar.q(z);
                        return;
                    }
                }
                gmn z2 = ckd.z(bVar);
                String string = bVar.getString(R.string.op_update_close_dialog_title, bVar.getString(R.string.op_update_check));
                die dieVar = (die) z2.z;
                dieVar.f14221f = string;
                dieVar.m = dieVar.i.getText(R.string.op_update_close_dialog_content);
                z2.q(bVar.getString(R.string.op_update_close_dialog_positive, c.b.b.x(bVar.i)), new dtm(bVar, switchCompat2, i2));
                z2.y(R.string.op_update_close_dialog_negative, new azn(bVar, i2, z));
                z2.t(R.string.alert_dialog_cancel, new fgw(4, switchCompat2));
                eyt.ay(bVar, z2.r());
            }
        });
        cro.ax(switchCompat);
        this.j = findViewById(R.id.op_update_frequency_row);
        this.f393f = (TextView) findViewById(R.id.op_update_frequency_tv);
        this.f394g = (TextView) findViewById(R.id.op_update_frequency_value);
        final String[] strArr = {getString(R.string.op_update_freq_hour), getString(R.string.op_update_freq_day), getString(R.string.op_update_freq_week), getString(R.string.op_update_freq_month)};
        o();
        final int i = 0;
        this.j.setOnClickListener(new View.OnClickListener(this) { // from class: g.fqb

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ c.e.b f17229c;

            {
                this.f17229c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = i;
                int i3 = 3;
                int i4 = 2;
                String[] strArr2 = strArr;
                final c.e.b bVar = this.f17229c;
                final int i5 = 0;
                final int i6 = 1;
                switch (i2) {
                    case 0:
                        int i7 = c.e.b.f391d;
                        c.e.b bVar2 = bVar.i;
                        int av = byh.av(bVar2, cro.av(bVar2, 2, "op_update_freq"), "op_update_freq");
                        if (av == 1) {
                            i3 = 0;
                        } else if (av == 3) {
                            i3 = 2;
                        } else if (av != 4) {
                            i3 = 1;
                        }
                        gmn z = ckd.z(bVar);
                        z.p(R.string.op_update_frequency);
                        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: g.afl
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i8) {
                                int i9 = i6;
                                c.e.b bVar3 = bVar;
                                switch (i9) {
                                    case 0:
                                        int i10 = c.e.b.f391d;
                                        dialogInterface.dismiss();
                                        byh.bb(bVar3.i, new int[]{1, 2, 3}[i8], "op_update_noti_period");
                                        c.b.b.l(bVar3.i, "c.t.d.o.p.u.t");
                                        bVar3.n();
                                        break;
                                    default:
                                        int i11 = c.e.b.f391d;
                                        dialogInterface.dismiss();
                                        byh.bb(bVar3.i, new int[]{1, 2, 3, 4}[i8], "op_update_freq");
                                        c.b.b.l(bVar3.i, "c.t.d.o.p.u.t");
                                        bVar3.o();
                                        break;
                                }
                            }
                        };
                        die dieVar = (die) z.z;
                        dieVar.o = strArr2;
                        dieVar.y = onClickListener;
                        dieVar.w = i3;
                        dieVar.l = true;
                        z.ak();
                        break;
                    default:
                        int i8 = c.e.b.f391d;
                        c.e.b bVar3 = bVar.i;
                        int av2 = byh.av(bVar3, cro.av(bVar3, 1, "op_update_noti_period"), "op_update_noti_period");
                        if (av2 == 2) {
                            i4 = 1;
                        } else if (av2 != 3) {
                            i4 = 0;
                        }
                        gmn z2 = ckd.z(bVar);
                        z2.p(R.string.op_update_notification_period);
                        DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: g.afl
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i82) {
                                int i9 = i5;
                                c.e.b bVar32 = bVar;
                                switch (i9) {
                                    case 0:
                                        int i10 = c.e.b.f391d;
                                        dialogInterface.dismiss();
                                        byh.bb(bVar32.i, new int[]{1, 2, 3}[i82], "op_update_noti_period");
                                        c.b.b.l(bVar32.i, "c.t.d.o.p.u.t");
                                        bVar32.n();
                                        break;
                                    default:
                                        int i11 = c.e.b.f391d;
                                        dialogInterface.dismiss();
                                        byh.bb(bVar32.i, new int[]{1, 2, 3, 4}[i82], "op_update_freq");
                                        c.b.b.l(bVar32.i, "c.t.d.o.p.u.t");
                                        bVar32.o();
                                        break;
                                }
                            }
                        };
                        die dieVar2 = (die) z2.z;
                        dieVar2.o = strArr2;
                        dieVar2.y = onClickListener2;
                        dieVar2.w = i4;
                        dieVar2.l = true;
                        z2.ak();
                        break;
                }
            }
        });
        this.h = findViewById(R.id.op_update_noti_period_row);
        this.k = (TextView) findViewById(R.id.op_update_noti_period_tv);
        this.f392e = (TextView) findViewById(R.id.op_update_noti_period_value);
        final String[] strArr2 = {getString(R.string.op_update_noti_period_normal_work), getString(R.string.op_update_noti_period_more_work), getString(R.string.op_update_noti_period_all)};
        n();
        final int i2 = 1;
        this.h.setOnClickListener(new View.OnClickListener(this) { // from class: g.fqb

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ c.e.b f17229c;

            {
                this.f17229c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i2;
                int i3 = 3;
                int i4 = 2;
                String[] strArr22 = strArr2;
                final c.e.b bVar = this.f17229c;
                final int i5 = 0;
                final int i6 = 1;
                switch (i22) {
                    case 0:
                        int i7 = c.e.b.f391d;
                        c.e.b bVar2 = bVar.i;
                        int av = byh.av(bVar2, cro.av(bVar2, 2, "op_update_freq"), "op_update_freq");
                        if (av == 1) {
                            i3 = 0;
                        } else if (av == 3) {
                            i3 = 2;
                        } else if (av != 4) {
                            i3 = 1;
                        }
                        gmn z = ckd.z(bVar);
                        z.p(R.string.op_update_frequency);
                        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: g.afl
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i82) {
                                int i9 = i6;
                                c.e.b bVar32 = bVar;
                                switch (i9) {
                                    case 0:
                                        int i10 = c.e.b.f391d;
                                        dialogInterface.dismiss();
                                        byh.bb(bVar32.i, new int[]{1, 2, 3}[i82], "op_update_noti_period");
                                        c.b.b.l(bVar32.i, "c.t.d.o.p.u.t");
                                        bVar32.n();
                                        break;
                                    default:
                                        int i11 = c.e.b.f391d;
                                        dialogInterface.dismiss();
                                        byh.bb(bVar32.i, new int[]{1, 2, 3, 4}[i82], "op_update_freq");
                                        c.b.b.l(bVar32.i, "c.t.d.o.p.u.t");
                                        bVar32.o();
                                        break;
                                }
                            }
                        };
                        die dieVar = (die) z.z;
                        dieVar.o = strArr22;
                        dieVar.y = onClickListener;
                        dieVar.w = i3;
                        dieVar.l = true;
                        z.ak();
                        break;
                    default:
                        int i8 = c.e.b.f391d;
                        c.e.b bVar3 = bVar.i;
                        int av2 = byh.av(bVar3, cro.av(bVar3, 1, "op_update_noti_period"), "op_update_noti_period");
                        if (av2 == 2) {
                            i4 = 1;
                        } else if (av2 != 3) {
                            i4 = 0;
                        }
                        gmn z2 = ckd.z(bVar);
                        z2.p(R.string.op_update_notification_period);
                        DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: g.afl
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i82) {
                                int i9 = i5;
                                c.e.b bVar32 = bVar;
                                switch (i9) {
                                    case 0:
                                        int i10 = c.e.b.f391d;
                                        dialogInterface.dismiss();
                                        byh.bb(bVar32.i, new int[]{1, 2, 3}[i82], "op_update_noti_period");
                                        c.b.b.l(bVar32.i, "c.t.d.o.p.u.t");
                                        bVar32.n();
                                        break;
                                    default:
                                        int i11 = c.e.b.f391d;
                                        dialogInterface.dismiss();
                                        byh.bb(bVar32.i, new int[]{1, 2, 3, 4}[i82], "op_update_freq");
                                        c.b.b.l(bVar32.i, "c.t.d.o.p.u.t");
                                        bVar32.o();
                                        break;
                                }
                            }
                        };
                        die dieVar2 = (die) z2.z;
                        dieVar2.o = strArr22;
                        dieVar2.y = onClickListener2;
                        dieVar2.w = i4;
                        dieVar2.l = true;
                        z2.ak();
                        break;
                }
            }
        });
        final SwitchCompat switchCompat2 = (SwitchCompat) findViewById(R.id.op_update_noti_mode_bar_switch);
        final SwitchCompat switchCompat3 = (SwitchCompat) findViewById(R.id.op_update_noti_mode_app_switch);
        final SwitchCompat switchCompat4 = (SwitchCompat) findViewById(R.id.op_update_noti_mode_desk_switch);
        p();
        final int i3 = 0;
        switchCompat2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.ctr

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ c.e.b f13486e;

            {
                this.f13486e = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i3) {
                    case 0:
                        int i4 = c.e.b.f391d;
                        this.f13486e.m("bar", z, switchCompat2, switchCompat3, switchCompat4);
                        break;
                    case 1:
                        int i5 = c.e.b.f391d;
                        this.f13486e.m("inapp", z, switchCompat2, switchCompat3, switchCompat4);
                        break;
                    default:
                        int i6 = c.e.b.f391d;
                        this.f13486e.m("desk", z, switchCompat2, switchCompat3, switchCompat4);
                        break;
                }
            }
        });
        final int i4 = 1;
        switchCompat3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.ctr

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ c.e.b f13486e;

            {
                this.f13486e = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i4) {
                    case 0:
                        int i42 = c.e.b.f391d;
                        this.f13486e.m("bar", z, switchCompat2, switchCompat3, switchCompat4);
                        break;
                    case 1:
                        int i5 = c.e.b.f391d;
                        this.f13486e.m("inapp", z, switchCompat2, switchCompat3, switchCompat4);
                        break;
                    default:
                        int i6 = c.e.b.f391d;
                        this.f13486e.m("desk", z, switchCompat2, switchCompat3, switchCompat4);
                        break;
                }
            }
        });
        final int i5 = 2;
        switchCompat4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: g.ctr

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ c.e.b f13486e;

            {
                this.f13486e = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i5) {
                    case 0:
                        int i42 = c.e.b.f391d;
                        this.f13486e.m("bar", z, switchCompat2, switchCompat3, switchCompat4);
                        break;
                    case 1:
                        int i52 = c.e.b.f391d;
                        this.f13486e.m("inapp", z, switchCompat2, switchCompat3, switchCompat4);
                        break;
                    default:
                        int i6 = c.e.b.f391d;
                        this.f13486e.m("desk", z, switchCompat2, switchCompat3, switchCompat4);
                        break;
                }
            }
        });
        cro.ax(switchCompat2);
        cro.ax(switchCompat3);
        cro.ax(switchCompat4);
        if (fml.e(this.i)) {
            bannerAdInit(null, fml.c(this));
            bannerAdShow();
        }
    }

    public final void p() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.op_update_noti_mode_bar_switch);
        SwitchCompat switchCompat2 = (SwitchCompat) findViewById(R.id.op_update_noti_mode_app_switch);
        SwitchCompat switchCompat3 = (SwitchCompat) findViewById(R.id.op_update_noti_mode_desk_switch);
        boolean v = c.b.b.v(this.i);
        switchCompat.setEnabled(v);
        switchCompat2.setEnabled(v);
        switchCompat3.setEnabled(v);
        List l = l(this.i, true);
        switchCompat.setChecked(l.contains("bar"));
        switchCompat2.setChecked(l.contains("inapp"));
        switchCompat3.setChecked(l.contains("desk"));
    }

    public final void q(boolean z) {
        byh.ad(this.i, "op_updatable", z);
        c.b.b.l(this.i, "c.t.d.o.p.u.t");
        o();
        n();
        p();
    }
}
