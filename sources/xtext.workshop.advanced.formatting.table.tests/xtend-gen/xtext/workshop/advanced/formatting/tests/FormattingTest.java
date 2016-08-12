/**
 * generated by Xtext 2.10.0
 */
package xtext.workshop.advanced.formatting.tests;

import com.google.inject.Inject;
import org.eclipse.xtend2.lib.StringConcatenation;
import org.eclipse.xtext.junit4.InjectWith;
import org.eclipse.xtext.junit4.XtextRunner;
import org.eclipse.xtext.junit4.util.ParseHelper;
import org.eclipse.xtext.resource.SaveOptions;
import org.eclipse.xtext.serializer.ISerializer;
import org.eclipse.xtext.xbase.lib.Exceptions;
import org.eclipse.xtext.xbase.lib.Extension;
import org.eclipse.xtext.xbase.lib.Functions.Function0;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import xtext.workshop.advanced.formatting.table.Document;
import xtext.workshop.advanced.formatting.tests.TableInjectorProvider;

@RunWith(XtextRunner.class)
@InjectWith(TableInjectorProvider.class)
@SuppressWarnings("all")
public class FormattingTest {
  @Inject
  @Extension
  private ParseHelper<Document> _parseHelper;
  
  @Inject
  @Extension
  private ISerializer _iSerializer;
  
  private String expectedResult = new Function0<String>() {
    public String apply() {
      StringConcatenation _builder = new StringConcatenation();
      _builder.append("{|");
      _builder.newLine();
      _builder.append("|-|Dominik Jetzen|age 12 |street \"Hauptstraße 28\" zip 1292 city \"Bad Nauheim\"");
      _builder.newLine();
      _builder.append("|-|Dominik J     |age 23 |street \"Westendstraße 2811\" zip 1292 city \"Frankfurt am Main\"");
      _builder.newLine();
      _builder.append("|-|S H           |age 129|street \"GM\" zip 1 city \"Ffm\"");
      _builder.newLine();
      _builder.append("|}");
      _builder.newLine();
      _builder.newLine();
      _builder.append("{|");
      _builder.newLine();
      _builder.append("|-|Orange|Apple    |more");
      _builder.newLine();
      _builder.append("|-|Bread |Pie      |more");
      _builder.newLine();
      _builder.append("|-!Butter!Ice cream|and more");
      _builder.newLine();
      _builder.append("|}");
      _builder.newLine();
      _builder.newLine();
      _builder.append("{|");
      _builder.newLine();
      _builder.append("|-|Orange|10 |7.00");
      _builder.newLine();
      _builder.append("|-|Bread |4  |3.00");
      _builder.newLine();
      _builder.append("|-|Butter|1  |5.00");
      _builder.newLine();
      _builder.append("|-!Total |100|15.00");
      _builder.newLine();
      _builder.append("|}");
      _builder.newLine();
      return _builder.toString();
    }
  }.apply();
  
  private String testInput = new Function0<String>() {
    public String apply() {
      StringConcatenation _builder = new StringConcatenation();
      _builder.append("{||-|Dominik Jetzen|age 12|street \"Hauptstraße 28\" zip 1292 city \"Bad Nauheim\"");
      _builder.newLine();
      _builder.append("|-|Dominik J|age 23|street \"Westendstraße 2811\" zip 1292 city \"Frankfurt am Main\"|-|S H|age 129|street \"GM\" zip 1 city \"Ffm\"|}");
      _builder.newLine();
      _builder.newLine();
      _builder.append("{||-|Orange|Apple|more|-|Bread|Pie|more|-!Butter!Ice cream|and more|}");
      _builder.newLine();
      _builder.newLine();
      _builder.append("{||-|Orange|10|7.00|-|Bread |4 |3.00|-|Butter|1 |5.00|-!Total |100|15.00|}");
      _builder.newLine();
      return _builder.toString();
    }
  }.apply();
  
  @Test
  public void testFormatter() {
    try {
      Document _parse = this._parseHelper.parse(this.testInput);
      SaveOptions.Builder _newBuilder = SaveOptions.newBuilder();
      SaveOptions.Builder _format = _newBuilder.format();
      SaveOptions _options = _format.getOptions();
      String _serialize = this._iSerializer.serialize(_parse, _options);
      Assert.assertEquals(this.expectedResult, _serialize);
    } catch (Throwable _e) {
      throw Exceptions.sneakyThrow(_e);
    }
  }
}
