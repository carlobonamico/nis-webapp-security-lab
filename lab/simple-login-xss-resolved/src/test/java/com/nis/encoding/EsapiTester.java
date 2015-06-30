package com.nis.encoding;

import junit.framework.Assert;
import org.junit.Test;
import org.owasp.esapi.ESAPI;
import org.owasp.esapi.EncoderConstants;
import org.owasp.esapi.codecs.OracleCodec;

/**
 * User: zannino
 * Date: 27/05/2015
 * Time: 16:53
 */
public class EsapiTester {

    @Test
    public void testHtmlEncoder() throws Exception {
        String safeHtml = ESAPI.encoder().encodeForHTML("<script>alert(\"hello\")</script>");
        System.out.println(safeHtml);
    }

    @Test
    public void testSqlEncoder() throws Exception {
        String safeSql = ESAPI.encoder().encodeForSQL(new OracleCodec(), "admin' or '1'='1");
        System.out.println(safeSql);
    }

    @Test
    public void testCsrfToken() throws Exception {
        String token = ESAPI.randomizer().getRandomString(10, EncoderConstants.CHAR_ALPHANUMERICS);
        System.out.println(token);
    }

    @Test
    public void testValidator() throws Exception {
        String email = "nnnnnnn...nnnnnn";
        boolean result = ESAPI.validator().isValidInput("test", email, "Email", 100, false);
        Assert.assertFalse(result);
        email="nicola.zannino@nispro.it";
        result = ESAPI.validator().isValidInput("test", email, "Email", 100, false);
        Assert.assertTrue(result);
    }

}
