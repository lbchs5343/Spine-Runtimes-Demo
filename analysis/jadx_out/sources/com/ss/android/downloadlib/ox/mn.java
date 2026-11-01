package com.ss.android.downloadlib.ox;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import com.ss.android.download.api.model.d;
import com.ss.android.socialbase.appdownloader.ox.ig;
import com.ss.android.socialbase.appdownloader.ox.no;

/* loaded from: classes.dex */
public class mn extends com.ss.android.socialbase.appdownloader.ox.dq {
    private static String dq = "mn";

    public static class dq implements no {
        private Dialog dq;

        public dq(Dialog dialog) {
            if (dialog != null) {
                this.dq = dialog;
                dq();
            }
        }

        @Override // com.ss.android.socialbase.appdownloader.ox.no
        public boolean d() {
            Dialog dialog = this.dq;
            if (dialog != null) {
                return dialog.isShowing();
            }
            return false;
        }

        @Override // com.ss.android.socialbase.appdownloader.ox.no
        public void dq() {
            Dialog dialog = this.dq;
            if (dialog != null) {
                dialog.show();
            }
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.dq, com.ss.android.socialbase.appdownloader.ox.ox
    public ig dq(Context context) {
        return new ig(context) { // from class: com.ss.android.downloadlib.ox.mn.1
            final /* synthetic */ Context dq;
            private DialogInterface.OnCancelListener iw;
            private d.dq ox;
            private DialogInterface.OnClickListener p;
            private DialogInterface.OnClickListener s;

            {
                this.dq = context;
                this.ox = new d.dq(context);
            }

            @Override // com.ss.android.socialbase.appdownloader.ox.ig
            public ig d(int i, DialogInterface.OnClickListener onClickListener) {
                this.ox.p(this.dq.getResources().getString(i));
                this.s = onClickListener;
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.ox.ig
            public ig dq(int i) {
                this.ox.dq(this.dq.getResources().getString(i));
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.ox.ig
            public ig dq(int i, DialogInterface.OnClickListener onClickListener) {
                this.ox.ox(this.dq.getResources().getString(i));
                this.p = onClickListener;
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.ox.ig
            public ig dq(DialogInterface.OnCancelListener onCancelListener) {
                this.iw = onCancelListener;
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.ox.ig
            public ig dq(String str) {
                this.ox.d(str);
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.ox.ig
            public ig dq(boolean z) {
                this.ox.dq(z);
                return this;
            }

            @Override // com.ss.android.socialbase.appdownloader.ox.ig
            public no dq() {
                this.ox.dq(new d.InterfaceC0211d() { // from class: com.ss.android.downloadlib.ox.mn.1.1
                    @Override // com.ss.android.download.api.model.d.InterfaceC0211d
                    public void d(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.s != null) {
                            AnonymousClass1.this.s.onClick(dialogInterface, -2);
                        }
                    }

                    @Override // com.ss.android.download.api.model.d.InterfaceC0211d
                    public void dq(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.p != null) {
                            AnonymousClass1.this.p.onClick(dialogInterface, -1);
                        }
                    }

                    @Override // com.ss.android.download.api.model.d.InterfaceC0211d
                    public void ox(DialogInterface dialogInterface) {
                        if (AnonymousClass1.this.iw == null || dialogInterface == null) {
                            return;
                        }
                        AnonymousClass1.this.iw.onCancel(dialogInterface);
                    }
                });
                com.ss.android.downloadlib.mn.no.dq(mn.dq, "getThemedAlertDlgBuilder", null);
                this.ox.dq(3);
                return new dq(com.ss.android.downloadlib.addownload.no.ox().d(this.ox.dq()));
            }
        };
    }
}
