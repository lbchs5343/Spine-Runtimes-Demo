package g;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class auk extends bkw {

    /* renamed from: a, reason: collision with root package name */
    public long f10872a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f10873b;

    /* renamed from: c, reason: collision with root package name */
    public long f10874c;

    /* renamed from: g, reason: collision with root package name */
    public String f10875g;
    public AccountManager h;

    public final long j() {
        _e();
        return this.f10872a;
    }

    public final long k() {
        an();
        return this.f10874c;
    }

    public final String l() {
        an();
        return this.f10875g;
    }

    public final boolean m() {
        Account[] result;
        _e();
        cyg cygVar = (cyg) this.z;
        czz czzVar = cygVar.f13743ab;
        bgm bgmVar = cygVar.z;
        Context context = cygVar.v;
        czzVar.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f10872a > AdBaseConstants.DEFAULT_DELAY_TIMESTAMP) {
            this.f10873b = null;
        }
        Boolean bool = this.f10873b;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (eyt.am(context, "android.permission.GET_ACCOUNTS") != 0) {
            cyg.ak(bgmVar);
            bgmVar.j.h("Permission error checking for dasher/unicorn accounts");
            this.f10872a = currentTimeMillis;
            this.f10873b = Boolean.FALSE;
            return false;
        }
        if (this.h == null) {
            this.h = AccountManager.get(context);
        }
        try {
            result = this.h.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
        } catch (AuthenticatorException e2) {
            e = e2;
            cyg.ak(bgmVar);
            bgmVar.f11517a.i(e, "Exception checking account types");
            this.f10872a = currentTimeMillis;
            this.f10873b = Boolean.FALSE;
            return false;
        } catch (OperationCanceledException e3) {
            e = e3;
            cyg.ak(bgmVar);
            bgmVar.f11517a.i(e, "Exception checking account types");
            this.f10872a = currentTimeMillis;
            this.f10873b = Boolean.FALSE;
            return false;
        } catch (IOException e4) {
            e = e4;
            cyg.ak(bgmVar);
            bgmVar.f11517a.i(e, "Exception checking account types");
            this.f10872a = currentTimeMillis;
            this.f10873b = Boolean.FALSE;
            return false;
        }
        if (result != null && result.length > 0) {
            this.f10873b = Boolean.TRUE;
            this.f10872a = currentTimeMillis;
            return true;
        }
        Account[] result2 = this.h.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
        if (result2 != null && result2.length > 0) {
            this.f10873b = Boolean.TRUE;
            this.f10872a = currentTimeMillis;
            return true;
        }
        this.f10872a = currentTimeMillis;
        this.f10873b = Boolean.FALSE;
        return false;
    }

    @Override // g.bkw
    public final boolean n() {
        Calendar calendar = Calendar.getInstance();
        this.f10874c = TimeUnit.MINUTES.convert(calendar.get(16) + calendar.get(15), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        this.f10875g = awf.i(language.toLowerCase(locale2), "-", locale.getCountry().toLowerCase(locale2));
        return false;
    }
}
