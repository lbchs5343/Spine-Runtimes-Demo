package com.bytedance.sdk.openadsdk.core.activity.base;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.dislike.ui.dq;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.mn;
import com.bytedance.sdk.openadsdk.core.widget.d;
import com.bytedance.sdk.openadsdk.core.widget.fw;
import com.bytedance.sdk.openadsdk.core.widget.ia;
import com.bytedance.sdk.openadsdk.core.widget.ig;
import com.bytedance.sdk.openadsdk.core.widget.iw;
import com.bytedance.sdk.openadsdk.core.widget.kk;
import com.bytedance.sdk.openadsdk.core.widget.no;
import com.bytedance.sdk.openadsdk.core.widget.o;
import com.bytedance.sdk.openadsdk.core.widget.ox;
import com.bytedance.sdk.openadsdk.core.widget.p;
import com.bytedance.sdk.openadsdk.core.widget.q;
import com.bytedance.sdk.openadsdk.core.widget.s;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor;
import g.dlv;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTDelegateActivity extends Activity {
    public static j dq;
    private static mn fw;

    /* renamed from: d, reason: collision with root package name */
    private Intent f2430d;

    /* renamed from: f, reason: collision with root package name */
    private fw f2431f;
    private Dialog ia;
    private p ig;
    private iw iw;
    private o jy;
    private kk kk;
    private d mn;
    private ox mp;
    private s no;
    private Activity o;
    private AlertDialog ox;
    private com.bytedance.sdk.openadsdk.core.dislike.ui.dq p;
    private ig q;
    private no s;

    public static class dq extends com.bytedance.sdk.component.o.kk {
        public dq(String str) {
            super(str);
        }

        @Override // java.lang.Runnable
        public void run() {
            ITTDownloadVisitor dq = com.bytedance.sdk.openadsdk.core.o.dq.dq.dq();
            if (dq != null) {
                Bridge h = com.bytedance.sdk.openadsdk.core.no.ia().h();
                if (h != null) {
                    dq.initPath(h.values().booleanValue(1));
                }
                i.mp();
            }
        }
    }

    private void d() {
        try {
            if (this.jy == null) {
                this.jy = new o(this.o, getIntent());
            }
            if (this.jy.isShowing()) {
                this.jy.dismiss();
            }
            this.jy.dq(new o.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.12
                @Override // com.bytedance.sdk.openadsdk.core.widget.o.dq
                public void dq(Dialog dialog) {
                    TTDelegateActivity.this.finish();
                }
            });
            this.jy.show();
        } catch (Throwable unused) {
        }
    }

    public static void d(Context context, String str) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 11);
        dq2.putExtra("dialog_app_ad_info", str);
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    public static void d(Context context, String str, String str2) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 9);
        dq2.putExtra("dialog_app_manage_model", str2);
        dq2.putExtra("app_download_url", str);
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    public static void d(Context context, String str, String str2, String str3) {
        if (context == null) {
            try {
                context = wp.getContext();
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        Intent dq2 = dq(context);
        JSONObject jSONObject = new JSONObject(str3);
        dq2.putExtra("type", 7);
        dq2.putExtra("app_download_url", str);
        dq2.putExtra("dialog_app_manage_model", str2);
        dq2.putExtra("dialog_title", jSONObject.optString("dialog_title"));
        dq2.putExtra("dialog_icon_url", jSONObject.optString("dialog_icon_url"));
        dq2.putExtra("dialog_app_description", jSONObject.optString("dialog_app_description"));
        dq2.putExtra("is_easy_dl_dialog_pop_up_style", jSONObject.optBoolean("is_easy_dl_dialog_pop_up_style"));
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    private void d(String str) {
        try {
            if (ce.ia(this.o)) {
                Dialog dialog = this.ia;
                if (dialog == null || !dialog.isShowing()) {
                    com.bytedance.sdk.openadsdk.core.widget.dq dqVar = new com.bytedance.sdk.openadsdk.core.widget.dq(this.o, str);
                    this.ia = dqVar;
                    dqVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.20
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            TTDelegateActivity.this.finish();
                        }
                    });
                    this.ia.show();
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void d(String str, String str2) {
        if (this.f2430d == null) {
            return;
        }
        ox(str, str2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str, String str2, boolean z) {
        ox(str, str2, z, (Dialog) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str, String str2, boolean z, Dialog dialog) {
        ox(str, str2, z, dialog);
    }

    private void d(final String str, String[] strArr) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            finish();
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                com.bytedance.sdk.openadsdk.core.k.s.dq().dq(this.o, strArr, new com.bytedance.sdk.openadsdk.core.k.iw() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.13
                    @Override // com.bytedance.sdk.openadsdk.core.k.iw
                    public void dq() {
                        com.bytedance.sdk.openadsdk.core.ir.mn.dq(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.k.iw
                    public void dq(String str2) {
                        com.bytedance.sdk.openadsdk.core.ir.mn.dq(str, str2);
                        TTDelegateActivity.this.finish();
                    }
                });
                return;
            } catch (Exception unused) {
            }
        }
        finish();
    }

    private static Intent dq(Context context) {
        Intent intent = new Intent(context, (Class<?>) TTDelegateActivity.class);
        if (!(context instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        return intent;
    }

    private s.dq dq(final String str, final String str2) {
        return new s.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.24
            @Override // com.bytedance.sdk.openadsdk.core.widget.s.dq
            public void d(Dialog dialog) {
                TTDelegateActivity.this.ox(str2, str, false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.s.dq
            public void dq(Dialog dialog) {
                com.bytedance.sdk.openadsdk.core.ir.iw.d(str);
                TTDelegateActivity.this.finish();
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.s.dq
            public void ox(Dialog dialog) {
                com.bytedance.sdk.openadsdk.core.ir.iw.p(str);
                TTDelegateActivity.this.finish();
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.s.dq
            public void p(Dialog dialog) {
                TTDelegateActivity.this.dq(str2, str, false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.s.dq
            public void s(Dialog dialog) {
                try {
                    com.bytedance.sdk.openadsdk.core.r.s s = com.bytedance.sdk.openadsdk.core.d.s(new JSONObject(str2));
                    if (s == null) {
                        return;
                    }
                    TTDelegateActivity.this.d(str, s.kk(), false);
                } catch (Throwable unused) {
                }
            }
        };
    }

    public static void dq(Context context, j jVar) {
        JSONObject ve;
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 6);
        if (jVar != null && (ve = jVar.ve()) != null) {
            dq2.putExtra("materialmeta", ve.toString());
        }
        if (context != null) {
            try {
                context.startActivity(dq2);
            } catch (Throwable unused) {
            }
        }
    }

    public static void dq(Context context, String str) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 10);
        dq2.putExtra("dialog_content_key", str);
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    public static void dq(Context context, String str, j jVar) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 13);
        dq = jVar;
        dq2.putExtra("event_tag", str);
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    public static void dq(Context context, String str, String str2) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 8);
        dq2.putExtra("app_download_url", str);
        dq2.putExtra("dialog_app_manage_model", str2);
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    public static void dq(Context context, String str, String str2, String str3) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 3);
        dq2.putExtra("app_download_url", str);
        dq2.putExtra("dialog_title", str2);
        dq2.putExtra("dialog_content_key", str3);
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    public static void dq(Context context, String str, String str2, String str3, mn mnVar, j jVar) {
        try {
            dq = jVar;
            fw = mnVar;
            if (context == null) {
                context = wp.getContext();
            }
            Intent dq2 = dq(context);
            JSONObject jSONObject = new JSONObject(str3);
            dq2.putExtra("type", 7);
            dq2.putExtra("app_download_url", str);
            dq2.putExtra("dialog_app_manage_model", str2);
            dq2.putExtra("dialog_title", jSONObject.optString("dialog_title"));
            dq2.putExtra("dialog_icon_url", jSONObject.optString("dialog_icon_url"));
            dq2.putExtra("dialog_app_description", jSONObject.optString("dialog_app_description"));
            dq2.putExtra("is_easy_dl_dialog_pop_up_style", jSONObject.optBoolean("is_easy_dl_dialog_pop_up_style"));
            com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void dq(Context context, String str, String str2, String str3, String str4, String str5) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 5);
        dq2.putExtra("app_download_url", str);
        dq2.putExtra("dialog_title", str2);
        dq2.putExtra("dialog_content_key", str3);
        dq2.putExtra("dialog_btn_yes_key", str4);
        dq2.putExtra("dialog_btn_no_key", str5);
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    public static void dq(Context context, String str, boolean z) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 15);
        if (!z) {
            dq2.putExtra("web_url", str);
        }
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    public static void dq(mn mnVar) {
        fw = mnVar;
    }

    private void dq(String str, String str2, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (this.ox == null) {
                this.ox = new AlertDialog.Builder(this.o, r.mn(this.o, "Theme.Dialog.TTDownload")).create();
            }
            this.ox.setTitle(String.valueOf(str));
            this.ox.setMessage(String.valueOf(str2));
            this.ox.setButton(-1, r.dq(this.o, "tt_label_ok"), onClickListener);
            this.ox.setButton(-2, r.dq(this.o, "tt_label_cancel"), onClickListener2);
            this.ox.setOnCancelListener(onCancelListener);
            if (this.ox.isShowing()) {
                return;
            }
            this.ox.show();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void dq(String str, String str2, mn mnVar) {
        if (ce.ia(this.o)) {
            if (TextUtils.isEmpty(str2)) {
                mnVar.dq(7, "uegnData is empty");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str2);
                s sVar = this.no;
                if (sVar == null || !sVar.isShowing()) {
                    s ia = new q(this.o, jSONObject, mnVar).ia(str);
                    this.no = ia;
                    ((q) ia).d(dq(str, str2));
                    this.no.show();
                }
            } catch (Exception unused) {
            }
        }
    }

    private void dq(final String str, String str2, String str3) {
        if (ce.ia(this.o)) {
            if (TextUtils.isEmpty(str2)) {
                str2 = r.dq(this.o, "tt_tip");
            }
            String str4 = str2;
            if (TextUtils.isEmpty(str3)) {
                str3 = "";
            }
            dq(str4, str3, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.14
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    com.bytedance.sdk.openadsdk.core.ir.iw.d(str);
                    TTDelegateActivity.this.finish();
                }
            }, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.15
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    com.bytedance.sdk.openadsdk.core.ir.iw.ox(str);
                    TTDelegateActivity.this.finish();
                }
            }, new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.16
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    com.bytedance.sdk.openadsdk.core.ir.iw.p(str);
                    TTDelegateActivity.this.finish();
                }
            });
        }
    }

    private void dq(final String str, final String str2, String str3, float f2, mn mnVar) {
        if (ce.ia(this.o)) {
            if (TextUtils.isEmpty(str2)) {
                mnVar.dq(7, "uegnData is empty");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str2);
                if (!TextUtils.isEmpty(str3)) {
                    jSONObject.put("app_name", str3);
                }
                jSONObject.put("score", f2);
                JSONObject d2 = com.bytedance.sdk.openadsdk.core.ugeno.kk.d(jSONObject.getString("ugen_dialog_md5"), jSONObject.getString("ugen_dialog_url"));
                if (d2 == null) {
                    mnVar.dq(8, "uegnTemplate is empty");
                    return;
                }
                kk kkVar = this.kk;
                if (kkVar == null || !kkVar.isShowing()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("easy_dl_dialog", jSONObject);
                    kk kkVar2 = new kk(str, this.o, d2, jSONObject2, mnVar, dq);
                    this.kk = kkVar2;
                    kkVar2.dq(new ia.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.23
                        @Override // com.bytedance.sdk.openadsdk.core.widget.ia.dq
                        public void d(Dialog dialog) {
                            TTDelegateActivity tTDelegateActivity = TTDelegateActivity.this;
                            tTDelegateActivity.p(str2, str, false, tTDelegateActivity.kk);
                            if (TTDelegateActivity.this.kk != null) {
                                TTDelegateActivity.this.kk.hide();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.widget.ia.dq
                        public void dq() {
                            try {
                                com.bytedance.sdk.openadsdk.core.r.s s = com.bytedance.sdk.openadsdk.core.d.s(new JSONObject(str2));
                                if (s != null) {
                                    TTDelegateActivity.this.d(str, s.kk(), false, (Dialog) TTDelegateActivity.this.kk);
                                }
                            } catch (JSONException unused) {
                            }
                            if (TTDelegateActivity.this.kk != null) {
                                TTDelegateActivity.this.kk.hide();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.widget.ia.dq
                        public void dq(Dialog dialog) {
                            com.bytedance.sdk.openadsdk.core.ir.iw.d(str);
                            TTDelegateActivity.this.finish();
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.widget.ia.dq
                        public void ox(Dialog dialog) {
                            com.bytedance.sdk.openadsdk.core.ir.iw.p(str);
                            TTDelegateActivity.this.finish();
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.widget.ia.dq
                        public void p(Dialog dialog) {
                            TTDelegateActivity tTDelegateActivity = TTDelegateActivity.this;
                            tTDelegateActivity.dq(str2, str, false, (Dialog) tTDelegateActivity.kk);
                            if (TTDelegateActivity.this.kk != null) {
                                TTDelegateActivity.this.kk.hide();
                            }
                        }
                    });
                    this.kk.show();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, String str2, String str3, float f2, String str4, String str5, JSONArray jSONArray, String str6, String str7, String str8, String str9) {
        if (ce.ia(this.o)) {
            s sVar = this.no;
            if (sVar == null || !sVar.isShowing()) {
                s dq2 = new s(this.o).dq(str8).s(str6).iw(str9).d(str3).mn(str7).ia(str).ox(str5).dq(f2).dq(jSONArray).p(str4).dq(dq(str, str2));
                this.no = dq2;
                dq2.show();
            }
        }
    }

    private void dq(final String str, String str2, String str3, String str4, String str5) {
        if (ce.ia(this.o)) {
            AlertDialog alertDialog = this.ox;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
            if (this.s == null) {
                this.s = new no(this.o).dq(str2).d(str3).ox(str4).p(str5).dq(new no.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.11
                    @Override // com.bytedance.sdk.openadsdk.core.widget.no.dq
                    public void d(Dialog dialog) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.ox(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.no.dq
                    public void dq(Dialog dialog) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.d(str);
                        TTDelegateActivity.this.finish();
                    }
                }).dq(new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.10
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.p(str);
                        TTDelegateActivity.this.finish();
                    }
                });
            }
            if (!this.s.isShowing()) {
                this.s.show();
            }
            this.ox = this.s;
        }
    }

    private void dq(final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final String str7, final JSONArray jSONArray, final float f2, final String str8) {
        dq(str, str2, str7, f2, new mn() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.22
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(int i, String str9) {
                TTDelegateActivity.this.dq(str, str2, str3, f2, str4, "", jSONArray, str5, str6, str7, str8);
                if (TTDelegateActivity.this.kk != null) {
                    TTDelegateActivity.this.kk.dq((mn) null);
                }
                if (TTDelegateActivity.fw != null) {
                    TTDelegateActivity.fw.dq(i, str9);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(dlv dlvVar) {
                if (TTDelegateActivity.fw != null) {
                    TTDelegateActivity.fw.dq(null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, final String str2, final boolean z) {
        try {
            if (ce.ia(this.o)) {
                p pVar = this.ig;
                if (pVar != null) {
                    pVar.dismiss();
                }
                p pVar2 = new p(this.o, str);
                this.ig = pVar2;
                pVar2.dq(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.4
                    @Override // com.bytedance.sdk.openadsdk.core.widget.p.dq
                    public void d(Dialog dialog) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.p(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.p.dq
                    public void dq(Dialog dialog) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.d(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.p.dq
                    public void ox(Dialog dialog) {
                        if (TTDelegateActivity.this.ig != null) {
                            if (!z) {
                                TTDelegateActivity.this.ig.dismiss();
                            } else {
                                com.bytedance.sdk.openadsdk.core.ir.iw.p(str2);
                                TTDelegateActivity.this.finish();
                            }
                        }
                    }
                });
                this.ig.show();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, final String str2, final boolean z, final Dialog dialog) {
        try {
            if (ce.ia(this.o)) {
                p pVar = this.ig;
                if (pVar != null) {
                    pVar.dismiss();
                }
                p pVar2 = new p(this.o, str);
                this.ig = pVar2;
                pVar2.dq(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.3
                    @Override // com.bytedance.sdk.openadsdk.core.widget.p.dq
                    public void d(Dialog dialog2) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.p(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.p.dq
                    public void dq(Dialog dialog2) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.d(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.p.dq
                    public void ox(Dialog dialog2) {
                        if (TTDelegateActivity.this.ig != null) {
                            if (z) {
                                com.bytedance.sdk.openadsdk.core.ir.iw.p(str2);
                                TTDelegateActivity.this.finish();
                            } else {
                                Dialog dialog3 = dialog;
                                if (dialog3 != null) {
                                    dialog3.show();
                                }
                                TTDelegateActivity.this.ig.dismiss();
                            }
                        }
                    }
                });
                this.ig.show();
            }
        } catch (Throwable unused) {
        }
    }

    public static void dq(String str, String[] strArr) {
        Intent intent = new Intent(wp.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 4);
        intent.putExtra("permission_id_key", str);
        intent.putExtra("permission_content_key", strArr);
        if (wp.getContext() != null) {
            com.bytedance.sdk.component.utils.d.dq(wp.getContext(), intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.1
                @Override // com.bytedance.sdk.component.utils.d.dq
                public void dq() {
                }

                @Override // com.bytedance.sdk.component.utils.d.dq
                public void dq(Throwable th) {
                    com.bytedance.sdk.component.utils.ig.d("requestPermission->startActivity error :" + th.toString());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(boolean z, String str, Dialog dialog) {
        if (this.mn == null) {
            return;
        }
        if (z) {
            com.bytedance.sdk.openadsdk.core.ir.iw.p(str);
            finish();
        } else {
            if (dialog != null) {
                dialog.show();
            }
            this.mn.dismiss();
        }
    }

    private void iw() {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                com.bytedance.sdk.openadsdk.f.d.ox.p no = com.bytedance.sdk.openadsdk.core.no.ia().no();
                boolean ox = no.ox();
                boolean s = no.s();
                ArrayList arrayList = new ArrayList();
                com.bytedance.sdk.openadsdk.jy.d.dq(no, arrayList);
                if (ox) {
                    arrayList.add("android.permission.READ_PHONE_STATE");
                }
                if (s) {
                    arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
                }
                String[] strArr = new String[arrayList.size()];
                arrayList.toArray(strArr);
                com.bytedance.sdk.openadsdk.core.k.s.dq().dq(this.o, strArr, new com.bytedance.sdk.openadsdk.core.k.iw() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.17
                    @Override // com.bytedance.sdk.openadsdk.core.k.iw
                    public void dq() {
                        com.bytedance.sdk.component.o.mn.dq(new dq("checkNecessaryPermission"), 1);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.k.iw
                    public void dq(String str) {
                        "android.permission.READ_PHONE_STATE".equals(str);
                        com.bytedance.sdk.component.o.mn.dq(new dq("checkNecessaryPermission"), 1);
                        TTDelegateActivity.this.finish();
                    }
                });
                return;
            } catch (Exception unused) {
            }
        }
        finish();
    }

    private void ox() {
        if (com.bytedance.sdk.openadsdk.core.no.ia().vf()) {
            if (this.no == null && this.kk == null && this.q == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.no.ia().kk(false);
            finish();
        }
    }

    public static void ox(Context context, String str, String str2) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 14);
        dq2.putExtra("dialog_app_desc_url", str2);
        dq2.putExtra("app_download_url", str);
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    private void ox(final String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        float f2;
        boolean z;
        String str7;
        JSONArray jSONArray;
        float f3;
        String str8;
        Intent intent = this.f2430d;
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("dialog_app_manage_model");
        String stringExtra2 = this.f2430d.getStringExtra("dialog_title");
        final String stringExtra3 = this.f2430d.getStringExtra("dialog_icon_url");
        final String stringExtra4 = this.f2430d.getStringExtra("dialog_app_description");
        boolean z2 = false;
        boolean booleanExtra = this.f2430d.getBooleanExtra("is_easy_dl_dialog_pop_up_style", false);
        try {
            String str9 = "";
            JSONArray jSONArray2 = null;
            if (TextUtils.isEmpty(stringExtra)) {
                str2 = stringExtra;
                str3 = "";
                str4 = str3;
                str5 = str4;
                str6 = str5;
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                z = false;
            } else {
                JSONObject jSONObject = new JSONObject(stringExtra);
                com.bytedance.sdk.openadsdk.core.r.s s = com.bytedance.sdk.openadsdk.core.d.s(jSONObject);
                if (s != null) {
                    String s2 = s.s();
                    str8 = s.mn();
                    str5 = s.o();
                    String mp = s.mp();
                    if (!TextUtils.isEmpty(mp)) {
                        stringExtra2 = mp;
                    }
                    jSONArray = s.p();
                    f3 = s.ox();
                    str9 = stringExtra2;
                    str7 = s2;
                } else {
                    str7 = "";
                    str5 = str7;
                    jSONArray = null;
                    f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    str8 = str5;
                }
                String optString = jSONObject.optString("ugen_url");
                String optString2 = jSONObject.optString("ugen_md5");
                if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                    jSONObject.put("app_name", str9);
                    jSONObject.put("icon_url", stringExtra3);
                    jSONObject.put("description", stringExtra4);
                    stringExtra = jSONObject.toString();
                    z2 = true;
                }
                String str10 = str7;
                str2 = stringExtra;
                f2 = f3;
                z = z2;
                str4 = str9;
                str9 = str10;
                JSONArray jSONArray3 = jSONArray;
                str6 = jSONObject.optString("hand_icon_url");
                str3 = str8;
                jSONArray2 = jSONArray3;
            }
            if (booleanExtra) {
                dq(str, str2, stringExtra3, stringExtra4, str9, str3, str4, jSONArray2, f2, str5);
                return;
            }
            final String str11 = str9;
            final JSONArray jSONArray4 = jSONArray2;
            final float f4 = f2;
            if (!z) {
                String str12 = str3;
                dq(str, str2, stringExtra3, f4, stringExtra4, str6, jSONArray4, str11, str12, str4, str5);
                return;
            }
            try {
                final String str13 = str4;
                final String str14 = str6;
                final String str15 = str5;
                final String str16 = str3;
                final String str17 = str2;
                try {
                    dq(str, str17, new mn() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.21
                        @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
                        public void dq(int i, String str18) {
                            TTDelegateActivity.this.dq(str, str17, stringExtra3, f4, stringExtra4, str14, jSONArray4, str11, str16, str13, str15);
                            if (TTDelegateActivity.this.kk != null) {
                                TTDelegateActivity.this.kk.dq((mn) null);
                            }
                            if (TTDelegateActivity.fw != null) {
                                TTDelegateActivity.fw.dq(i, str18);
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
                        public void dq(dlv dlvVar) {
                            if (TTDelegateActivity.fw != null) {
                                TTDelegateActivity.fw.dq(null);
                            }
                        }
                    });
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
        }
    }

    private void ox(String str, String str2) {
        try {
            if (ce.ia(this.o)) {
                iw iwVar = this.iw;
                if (iwVar != null) {
                    iwVar.dismiss();
                }
                iw iwVar2 = new iw(this.o, str, str2);
                this.iw = iwVar2;
                iwVar2.dq(new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.2
                    @Override // com.bytedance.sdk.openadsdk.core.widget.iw.dq
                    public void dq(Dialog dialog) {
                        if (TTDelegateActivity.this.iw != null) {
                            TTDelegateActivity.this.iw.dismiss();
                            TTDelegateActivity.this.finish();
                        }
                    }
                });
                this.iw.show();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(String str, final String str2, final boolean z) {
        try {
            if (ce.ia(this.o)) {
                ox oxVar = this.mp;
                if (oxVar != null) {
                    oxVar.dismiss();
                }
                ox oxVar2 = new ox(this.o, str);
                this.mp = oxVar2;
                oxVar2.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.8
                    @Override // com.bytedance.sdk.openadsdk.core.widget.ox.dq
                    public void d(Dialog dialog) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.p(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.ox.dq
                    public void dq(Dialog dialog) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.d(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.ox.dq
                    public void ox(Dialog dialog) {
                        if (TTDelegateActivity.this.mp != null) {
                            if (!z) {
                                TTDelegateActivity.this.mp.dismiss();
                            } else {
                                com.bytedance.sdk.openadsdk.core.ir.iw.p(str2);
                                TTDelegateActivity.this.finish();
                            }
                        }
                    }
                });
                this.mp.show();
            }
        } catch (Throwable unused) {
        }
    }

    private void ox(final String str, String str2, final boolean z, final Dialog dialog) {
        try {
            if (ce.ia(this.o)) {
                com.bytedance.sdk.openadsdk.core.widget.d dVar = this.mn;
                if (dVar != null) {
                    dVar.dismiss();
                }
                com.bytedance.sdk.openadsdk.core.widget.d dVar2 = new com.bytedance.sdk.openadsdk.core.widget.d(this.o, str2);
                this.mn = dVar2;
                dVar2.dq(new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.5
                    @Override // com.bytedance.sdk.openadsdk.core.widget.d.dq
                    public void d(Dialog dialog2) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.p(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.d.dq
                    public void dq(Dialog dialog2) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.d(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.d.dq
                    public void ox(Dialog dialog2) {
                        TTDelegateActivity.this.dq(z, str, dialog);
                    }
                });
                this.mn.show();
            }
        } catch (Throwable unused) {
        }
    }

    private void p() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        window.setAttributes(attributes);
    }

    public static void p(Context context, String str, String str2) {
        if (context == null) {
            context = wp.getContext();
        }
        Intent dq2 = dq(context);
        dq2.putExtra("type", 12);
        dq2.putExtra("web_url", str);
        dq2.putExtra("web_title", str2);
        com.bytedance.sdk.component.utils.d.dq(context, dq2, null);
    }

    private void p(String str) {
        try {
            if (ce.ia(this.o)) {
                ig igVar = this.q;
                if (igVar != null) {
                    igVar.dismiss();
                }
                ig igVar2 = new ig(this.o, str);
                this.q = igVar2;
                igVar2.dq(new ig.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.6
                    @Override // com.bytedance.sdk.openadsdk.core.widget.ig.dq
                    public void dq(Dialog dialog) {
                        TTDelegateActivity.this.finish();
                    }
                });
                this.q.show();
            }
        } catch (Throwable unused) {
        }
    }

    private void p(String str, String str2) {
        if (this.f2430d == null) {
            return;
        }
        dq(str, str2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(String str, final String str2, final boolean z, final Dialog dialog) {
        try {
            if (ce.ia(this.o)) {
                ox oxVar = this.mp;
                if (oxVar != null) {
                    oxVar.dismiss();
                }
                ox oxVar2 = new ox(this.o, str);
                this.mp = oxVar2;
                oxVar2.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.7
                    @Override // com.bytedance.sdk.openadsdk.core.widget.ox.dq
                    public void d(Dialog dialog2) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.p(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.ox.dq
                    public void dq(Dialog dialog2) {
                        com.bytedance.sdk.openadsdk.core.ir.iw.d(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.ox.dq
                    public void ox(Dialog dialog2) {
                        if (TTDelegateActivity.this.mp != null) {
                            if (z) {
                                com.bytedance.sdk.openadsdk.core.ir.iw.p(str2);
                                TTDelegateActivity.this.finish();
                            } else {
                                Dialog dialog3 = dialog;
                                if (dialog3 != null) {
                                    dialog3.show();
                                }
                                TTDelegateActivity.this.mp.dismiss();
                            }
                        }
                    }
                });
                this.mp.show();
            }
        } catch (Throwable unused) {
        }
    }

    private void s() {
        try {
            Intent intent = this.f2430d;
            if (intent != null) {
                int intExtra = intent.getIntExtra("type", 0);
                String stringExtra = this.f2430d.getStringExtra("app_download_url");
                this.f2430d.getStringExtra("app_name");
                try {
                    switch (intExtra) {
                        case 1:
                            break;
                        case 2:
                            iw();
                            break;
                        case 3:
                            dq(stringExtra, this.f2430d.getStringExtra("dialog_title"), this.f2430d.getStringExtra("dialog_content_key"));
                            break;
                        case 4:
                            d(this.f2430d.getStringExtra("permission_id_key"), this.f2430d.getStringArrayExtra("permission_content_key"));
                            break;
                        case 5:
                            dq(stringExtra, this.f2430d.getStringExtra("dialog_title"), this.f2430d.getStringExtra("dialog_content_key"), this.f2430d.getStringExtra("dialog_btn_yes_key"), this.f2430d.getStringExtra("dialog_btn_no_key"));
                            break;
                        case 6:
                            s(this.f2430d.getStringExtra("materialmeta"));
                            break;
                        case 7:
                            ox(stringExtra);
                            break;
                        case 8:
                            d(this.f2430d.getStringExtra("dialog_app_manage_model"), stringExtra);
                            break;
                        case 9:
                            p(this.f2430d.getStringExtra("dialog_app_manage_model"), stringExtra);
                            break;
                        case 10:
                            d(this.f2430d.getStringExtra("dialog_content_key"));
                            break;
                        case 11:
                            p(this.f2430d.getStringExtra("dialog_app_ad_info"));
                            break;
                        case 12:
                            ox(this.f2430d.getStringExtra("web_url"), this.f2430d.getStringExtra("web_title"));
                            break;
                        case 13:
                            d();
                            break;
                        case 14:
                            d(stringExtra, this.f2430d.getStringExtra("dialog_app_desc_url"), true);
                            break;
                        case 15:
                            dq(this.f2430d.getStringExtra("web_url"));
                            break;
                        default:
                            finish();
                            break;
                    }
                } catch (Exception unused) {
                    finish();
                }
            }
        } catch (Exception unused2) {
        }
    }

    private void s(String str) {
        if (ce.ia(this.o)) {
            if (str != null && this.p == null) {
                try {
                    j dq2 = com.bytedance.sdk.openadsdk.core.d.dq(new JSONObject(str));
                    if (dq2 != null) {
                        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(this.o, dq2.ez(), false);
                        this.p = dqVar;
                        dqVar.dq(new dq.InterfaceC0156dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.9
                            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
                            public void d() {
                                TTDelegateActivity.this.finish();
                            }

                            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
                            public void dq() {
                            }

                            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
                            public void dq(int i, String str2, boolean z) {
                                TTDelegateActivity.this.finish();
                            }
                        });
                        com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.o, this.p, dq2);
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
            com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar2 = this.p;
            if (dqVar2 != null) {
                dqVar2.dq();
            }
        }
    }

    public void dq(String str) {
        if (this.f2431f == null) {
            this.f2431f = new fw(this.o, str);
        }
        if (this.f2431f.isShowing()) {
            this.f2431f.dismiss();
        }
        this.f2431f.dq(new fw.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.18
            @Override // com.bytedance.sdk.openadsdk.core.widget.fw.dq
            public void d(String str2) {
                com.bytedance.sdk.openadsdk.core.ir.iw.p(str2);
                TTDelegateActivity.this.finish();
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.fw.dq
            public void dq(String str2) {
                com.bytedance.sdk.openadsdk.core.ir.iw.d(str2);
                TTDelegateActivity.this.finish();
            }
        });
        this.f2431f.show();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        s sVar = this.no;
        if (sVar == null || sVar.isShowing()) {
            return;
        }
        this.no.dq();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.o = this;
        p();
        this.f2430d = getIntent();
        if (wp.getContext() == null) {
            wp.dq(this.o);
        }
        com.bytedance.sdk.component.o.mn.d().execute(new com.bytedance.sdk.component.o.kk("onDelegateActivityOnCreate") { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.19
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(TTDelegateActivity.this.o);
            }
        });
    }

    @Override // android.app.Activity
    public void onDestroy() {
        try {
            dq = null;
            AlertDialog alertDialog = this.ox;
            if (alertDialog != null && alertDialog.isShowing()) {
                this.ox.dismiss();
            }
            kk kkVar = this.kk;
            if (kkVar != null && kkVar.isShowing()) {
                com.bytedance.sdk.openadsdk.core.ir.iw.dq(this.kk.dq());
                if (this.kk.isShowing()) {
                    this.kk.dismiss();
                }
            }
            iw iwVar = this.iw;
            if (iwVar != null && iwVar.isShowing()) {
                this.iw.dismiss();
            }
            s sVar = this.no;
            if (sVar != null) {
                if (sVar.isShowing()) {
                    this.no.dismiss();
                }
                com.bytedance.sdk.openadsdk.core.ir.iw.dq(this.no.p());
            }
            ox oxVar = this.mp;
            if (oxVar != null && oxVar.isShowing()) {
                this.mp.dismiss();
            }
            p pVar = this.ig;
            if (pVar != null && pVar.isShowing()) {
                this.ig.dismiss();
            }
            ig igVar = this.q;
            if (igVar != null && igVar.isShowing()) {
                this.q.dismiss();
            }
            Dialog dialog = this.ia;
            if (dialog != null && dialog.isShowing()) {
                this.ia.dismiss();
            }
        } catch (Throwable unused) {
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (wp.getContext() == null) {
            wp.dq(this.o);
        }
        try {
            setIntent(intent);
            this.f2430d = intent;
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        com.bytedance.sdk.openadsdk.core.k.s.dq().dq(this.o, strArr, iArr);
        com.bytedance.sdk.component.o.mn.dq(new dq("onRequestPermissionsResult"), 1);
        finish();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (getIntent() != null) {
            s();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        ox();
    }
}
