import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties: DioProperties(pubName: 'backend_api'),
    inputSpecFile: 'contract/api.yaml',
    generatorName: Generator.dioNext,
    outputDirectory: 'generated/backend_api',
    overwriteExistingFiles: true,
    alwaysRun: true)
class GeneratorConfig extends OpenapiGeneratorConfig {}
