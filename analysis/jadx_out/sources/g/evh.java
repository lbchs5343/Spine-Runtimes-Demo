package g;

import j$.util.Objects;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes.dex */
public abstract class evh {

    /* renamed from: a, reason: collision with root package name */
    public static final String f16225a = cqc.class.getPackage().getName();

    /* renamed from: b, reason: collision with root package name */
    public static final String f16226b = cmb.class.getName();

    public static String c(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, true);
        k(th);
        th.printStackTrace(printWriter);
        return stringWriter.getBuffer().toString();
    }

    public static String d(Iterable iterable, String str, Function function) {
        StringBuilder sb = new StringBuilder();
        l(sb, iterable, str, function);
        return sb.toString();
    }

    public static boolean e(Collection collection) {
        return (collection == null || collection.isEmpty()) ? false : true;
    }

    public static List f(List list) {
        return list.isEmpty() ? Collections.EMPTY_LIST : list.size() == 1 ? Collections.singletonList(list.get(0)) : new dqh(list);
    }

    public static List g(Collection collection, Function function) {
        if (collection == null || collection.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(function.apply(it.next()));
        }
        return arrayList;
    }

    public static String h(String str, Iterable iterable) {
        return iterable == null ? "" : d(iterable, str, new coq(11));
    }

    public static void i(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        StackTraceElement stackTraceElement = null;
        int i = 0;
        while (i < length) {
            StackTraceElement stackTraceElement2 = stackTrace[i];
            String className = stackTraceElement2.getClassName();
            if (className.equals(f16226b) || className.startsWith(f16225a) || Objects.equals(stackTraceElement, stackTraceElement2)) {
                th.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, 0, i));
                return;
            } else {
                i++;
                stackTraceElement = stackTraceElement2;
            }
        }
        for (int i2 = length - 1; i2 >= 0; i2--) {
            String className2 = stackTrace[i2].getClassName();
            if (className2.startsWith("jadx.") && !className2.startsWith("jadx.tests.")) {
                th.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, 0, i2));
                return;
            }
        }
    }

    public static void j(eos eosVar, Throwable th) {
        if (th == null) {
            return;
        }
        ((grs) eosVar).ag();
        PrintWriter printWriter = new PrintWriter((OutputStream) new vs(eosVar), true);
        try {
            k(th);
            th.printStackTrace(printWriter);
            printWriter.flush();
            printWriter.close();
        } catch (Throwable th2) {
            try {
                printWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void k(Throwable th) {
        try {
            i(th);
        } catch (Exception unused) {
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            k(cause);
        }
    }

    public static void l(StringBuilder sb, Iterable iterable, String str, Function function) {
        if (iterable == null) {
            return;
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            sb.append((String) function.apply(it.next()));
        }
        while (it.hasNext()) {
            sb.append(str);
            sb.append((String) function.apply(it.next()));
        }
    }

    public static boolean m(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    public static void n() {
        if (Thread.currentThread().isInterrupted()) {
            throw new gck("Thread interrupted");
        }
    }

    public static Object o(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return awf.q(1, list);
    }

    public static String p(String str) {
        if (str.charAt(0) != 'L') {
            return str;
        }
        int length = str.length() - 1;
        return str.charAt(length) == ';' ? str.substring(1, length).replace('/', '.') : str;
    }

    public static Object q(List list) {
        if (list == null || list.size() != 1) {
            return null;
        }
        return list.get(0);
    }
}
