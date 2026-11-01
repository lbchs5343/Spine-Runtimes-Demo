package com.ss.android.socialbase.appdownloader.p;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.ss.android.socialbase.appdownloader.ox.ig;
import com.ss.android.socialbase.appdownloader.ox.no;

/* loaded from: classes.dex */
public class dq extends com.ss.android.socialbase.appdownloader.ox.d {
    private AlertDialog.Builder dq;

    /* renamed from: com.ss.android.socialbase.appdownloader.p.dq$dq, reason: collision with other inner class name */
    public static class C0228dq implements no {
        private AlertDialog dq;

        public C0228dq(AlertDialog.Builder builder) {
            if (builder != null) {
                this.dq = builder.show();
            }
        }

        @Override // com.ss.android.socialbase.appdownloader.ox.no
        public boolean d() {
            AlertDialog alertDialog = this.dq;
            if (alertDialog != null) {
                return alertDialog.isShowing();
            }
            return false;
        }

        @Override // com.ss.android.socialbase.appdownloader.ox.no
        public void dq() {
            AlertDialog alertDialog = this.dq;
            if (alertDialog != null) {
                alertDialog.show();
            }
        }
    }

    public dq(Context context) {
        this.dq = new AlertDialog.Builder(context);
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.ig
    public ig d(int i, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = this.dq;
        if (builder != null) {
            builder.setNegativeButton(i, onClickListener);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.ig
    public ig dq(int i) {
        AlertDialog.Builder builder = this.dq;
        if (builder != null) {
            builder.setTitle(i);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.ig
    public ig dq(int i, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = this.dq;
        if (builder != null) {
            builder.setPositiveButton(i, onClickListener);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.ig
    public ig dq(DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = this.dq;
        if (builder != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.ig
    public ig dq(String str) {
        AlertDialog.Builder builder = this.dq;
        if (builder != null) {
            builder.setMessage(str);
        }
        return this;
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.ig
    public no dq() {
        return new C0228dq(this.dq);
    }
}
